#!/bin/sh

while read line;
do


item=$(curl \
  -sL -X PUT \
  -H "Authorization: Token ---" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/orgs/cs-devops-bootcamp/teams/devops-3/memberships/$line \
    -d '{"role":"member"}'
)

echo $item

done < file.txt >> test.json
