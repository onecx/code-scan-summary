#!/bin/bash

ORG="onecx"
OUTPUT_FILE="SECURITY_SUMMARY.md"

echo "# Security Summary" > "$OUTPUT_FILE"
echo "| Repository | Rule ID | Severity | Message | Alert URL |" >> "$OUTPUT_FILE"
echo "|------------|---------|----------|---------|-----------|" >> "$OUTPUT_FILE"

REPOS=$(gh repo list "$ORG" --limit 1000 --json name -q '.[].name')

for REPO in $REPOS; do
  echo "Processing repository $REPO"
  RESPONSE=$(gh api "repos/$ORG/$REPO/code-scanning/alerts" 2>&1)

  if echo "$RESPONSE" | grep -q "HTTP 403"; then
    echo "Repo $REPO has 403"
    continue
  elif echo "$RESPONSE" | grep -q "HTTP 404"; then
    echo "Repo $REPO has 404"
    continue
  elif echo "$RESPONSE" | grep -q '\[\]'; then
    echo "Repo $REPO has XXX"
    continue
  else
    ALERTS=$(echo "$RESPONSE" | jq -c '.[]')
    echo "Alerts: $ALERTS"
    while IFS= read -r alert; do
      RULE_ID=$(echo "$alert" | jq -r '.rule.id')
      SEVERITY=$(echo "$alert" | jq -r '.rule.security_severity_level')
      MESSAGE=$(echo "$alert" | jq -r '.most_recent_instance.message.text')
      URL=$(echo "$alert" | jq -r '.html_url')

      echo "| $REPO | \`$RULE_ID\` | $SEVERITY | $MESSAGE | [ink |" >> "$OUTPUT_FILE"
    done <<< "$ALERTS"
  fi
done

echo "✅ SECURITY_SUMMARY.md has been created as a markdown table."