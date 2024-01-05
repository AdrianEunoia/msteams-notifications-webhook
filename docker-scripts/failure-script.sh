#!/bin/bash

WEBHOOK_TEAMS=$1
echo "WEBHOOK_TEAMS: $WEBHOOK_TEAMS"

cat << EOF > message.json
{"@type":"MessageCard","@context":"https://schema.org/extensions","summary":"Pipeline failure!","themeColor":"ff0000","title":"CI $GITHUB_REPOSITORY pipeline failure ❌","sections":[{"facts":[{"name":"Repository:","value":"$GITHUB_REPOSITORY"},{"name":"Branch:","value":"$GITHUB_REF_NAME"},{"name":"By:","value":"$GITHUB_ACTOR"}]}],"potentialAction":[{"@type":"OpenUri","name":"View on GitHub","targets":[{"os":"default","uri":"$GITHUB_SERVER_URL/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID"}]}]}
EOF

curl -X POST -H 'Content-Type: application/json' -d @message.json "$WEBHOOK_TEAMS"
