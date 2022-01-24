#!/bin/sh

while read line;
do
echo $line
echo "+++++++++++++++++++++++++++++++"

curl \
  -X POST \
  -H "Authorization: Token ghp_" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/orgs/cs-devops-bootcamp/invitations \
  -d '{"email":"'"${line}"'", "role":"direct_member", "team_ids":[5594430]}'


echo "+++++++++++++++++++++++++++++++"

done < file.txt
