#!/bin/bash

ORG="onecx"
TIMESTAMP=$(date +"%y%m%d-%H%M")
OUTPUT_FILE="SECURITY_SUMMARY_${TIMESTAMP}.md"

# Export the filename for GitHub Actions
echo "OUTPUT_FILE=$OUTPUT_FILE" >> $GITHUB_ENV

echo "# Security Summary" > "$OUTPUT_FILE"
echo "| Repository | Rule ID | Severity | Message | Alert URL |" >> "$OUTPUT_FILE"
echo "|------------|---------|----------|---------|-----------|" >> "$OUTPUT_FILE"

REPOS=$(gh repo list "$ORG" --limit 1000 --json name -q '.[].name')

for REPO in $REPOS; do
  echo "Processing repository $REPO"
  RESPONSE=$(gh api "repos/$ORG/$REPO/code-scanning/alerts" 2>&1)

  if echo "$RESPONSE" | grep -q "HTTP 403"; then
    echo "Alert response 403"
    continue
  elif echo "$RESPONSE" | grep -q "HTTP 404"; then
    echo "Alert response 404"
    continue
  else    
    ALERT_COUNT=$(echo "$RESPONSE" | jq length 2>/dev/null)
    if [ "$ALERT_COUNT" -eq 0 ]; then
      echo "No alerts found"
      continue
    fi

    ALERTS=$(echo "$RESPONSE" | jq -c '.[]')
    while IFS= read -r alert; do
      RULE_ID=$(echo "$alert" | jq -r '.rule.id')
      SEVERITY=$(echo "$alert" | jq -r '.rule.security_severity_level')
      MESSAGE=$(echo "$alert" | jq -r '.most_recent_instance.message.text')
      RAW_MESSAGE=$(echo "$alert" | jq -r '.most_recent_instance.message.text' | jq -Rs . | sed 's/^"//;s/"$//')
      URL=$(echo "$alert" | jq -r '.html_url')

      echo "| $REPO | \`$RULE_ID\` | $SEVERITY | $RAW_MESSAGE | [Link]($URL) |" >> "$OUTPUT_FILE"
    done <<< "$ALERTS"
  fi
done

echo "✅ SECURITY_SUMMARY.md has been created as a markdown table."