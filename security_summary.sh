#!/bin/bash
ORG="onecx"
TIMESTAMP=$(date +"%y%m%d-%H%M")
OUTPUT_FILE="SECURITY_SUMMARY.md"
ARCHIVE_FILE="archive/SECURITY_SUMMARY_${TIMESTAMP}.md"

echo "OUTPUT_FILE=$OUTPUT_FILE" >> $GITHUB_ENV
mkdir -p archive

# Initialize summary table
echo "# Security Summary" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "| Repository | Critical | High | Medium | Low | Null |" >> "$OUTPUT_FILE"
echo "|------------|----------|------|--------|-----|------|" >> "$OUTPUT_FILE"

# Prepare detailed table header
DETAILED_TABLE="\n# Security Details"
DETAILED_TABLE+="\n| Repository | Rule ID | Severity | Alert URL | Message |\n|------------|---------|----------|---------|-----------|"

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
  fi

  ALERT_COUNT=$(echo "$RESPONSE" | jq length 2>/dev/null)
  if [ "$ALERT_COUNT" -eq 0 ]; then
    echo "| $REPO | 0 | 0 | 0 | 0 | 0 |" >> "$OUTPUT_FILE"
    continue
  fi

  # Count severities
  CRITICAL=$(echo "$RESPONSE" | jq '[.[] | select(.rule.security_severity_level == "critical")] | length')
  HIGH=$(echo "$RESPONSE" | jq '[.[] | select(.rule.security_severity_level == "high")] | length')
  MEDIUM=$(echo "$RESPONSE" | jq '[.[] | select(.rule.security_severity_level == "medium")] | length')
  LOW=$(echo "$RESPONSE" | jq '[.[] | select(.rule.security_severity_level == "low")] | length')
  NULL=$(echo "$RESPONSE" | jq '[.[] | select(.rule.security_severity_level == null)] | length')

  echo "| $REPO | $CRITICAL | $HIGH | $MEDIUM | $LOW | $NULL |" >> "$OUTPUT_FILE"

  # Append alerts to detailed table
  ALERTS=$(echo "$RESPONSE" | jq -c '.[]')
  while IFS= read -r alert; do
    RULE_ID=$(echo "$alert" | jq -r '.rule.id')
    SEVERITY=$(echo "$alert" | jq -r '.rule.security_severity_level')
    RAW_MESSAGE=$(echo "$alert" | jq -r '.most_recent_instance.message.text' | jq -Rs . | sed 's/^"//;s/"$//')
    URL=$(echo "$alert" | jq -r '.html_url')

    DETAILED_TABLE+="\n| $REPO | \`$RULE_ID\` | $SEVERITY | [Link]($URL) | $RAW_MESSAGE |"
  done <<< "$ALERTS"
done

# Append detailed table to output
echo -e "$DETAILED_TABLE" >> "$OUTPUT_FILE"

# Copy to archive
cp "$OUTPUT_FILE" "$ARCHIVE_FILE"

echo "✅ SECURITY_SUMMARY.md and $ARCHIVE_FILE have been created."
