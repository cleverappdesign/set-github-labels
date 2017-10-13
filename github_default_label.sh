echo ''
echo 'This script will remove the GitHub default labels and create the 80|20 process labels for your repo. A personal access token is required to access private repos.'
TOKEN=$GITHUB_PERSONAL_ACCESS_TOKEN

echo ''
echo -n 'GitHub Repo Name (e.g. cl0000-cb00-project-name ): '
read REPO

REPO_USER='cleverbanana'
REPO_NAME=$REPO

# Delete default labels
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/bug
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/duplicate
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/enhancement
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/help%20wanted
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/invalid
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/question
curl -u $TOKEN:x-oauth-basic --request DELETE https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/wontfix

#create state labels
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"backlog","color":"333333"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"cancelled","color":"eeeeee"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"dependency","color":"eeeeee"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"duplicated","color":"eeeeee"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"

#create helper labels
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"bug","color":"e99695"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"update","color":"c5def5"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"enhancement","color":"c2e0c6"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u $TOKEN:x-oauth-basic --include --request POST --data '{"name":"integration","color":"d4c5f9"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
