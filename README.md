# Set Github Label
Run this script to create update the default label for the repo.

## Instructions
### Step 1.
Create a Personal Access Token follow [this instruction!](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)
### Step 2.
Add your API token and your Github username in your `.bash_profil`.
It should look like this:
```
#GitHub Personal Access Token & Username for label generation
export GITHUB_PERSONAL_ACCESS_TOKEN="YOUR_TOKEN_HERE";
export GITHUB_USERNAME="hsusyh"
```

### Step 3.
Download this shell script onto your computer
### Step 4.
Run the script on your terminal:
`./PATH_TO_YOUR_SCRIPT/github_default_label.sh`
### Step 5.
Follow the instruction, type in your repo name. For example: 
> set-github-label

If it is successful, you will see somthing like this on your terminal
```
HTTP/1.1 201 Created
Server: GitHub.com
Date: Fri, 13 Oct 2017 03:43:13 GMT
Content-Type: application/json; charset=utf-8
Content-Length: 161
Status: 201 Created
X-RateLimit-Limit: 5000
X-RateLimit-Remaining: 4897
X-RateLimit-Reset: 1507866494
Cache-Control: private, max-age=60, s-maxage=60
Vary: Accept, Authorization, Cookie, X-GitHub-OTP
ETag: "f0b4525c83fb739a7babfa2bd2a44e3b"
X-OAuth-Scopes: admin:gpg_key, admin:org, admin:org_hook, admin:public_key, admin:repo_hook, delete_repo, gist, notifications, repo, user
X-Accepted-OAuth-Scopes:
Location: https://api.github.com/repos/cleverbanana/test123/labels/backlog
X-GitHub-Media-Type: github.v3; format=json
Access-Control-Expose-Headers: ETag, Link, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval
Access-Control-Allow-Origin: *
Content-Security-Policy: default-src 'none'
Strict-Transport-Security: max-age=31536000; includeSubdomains; preload
X-Content-Type-Options: nosniff
X-Frame-Options: deny
X-XSS-Protection: 1; mode=block
X-Runtime-rack: 0.035878
X-GitHub-Request-Id: EBD9:20FD1:E7DC00:1E8E11E:59E03651

{
  "id": 718530842,
  "url": "https://api.github.com/repos/username/reponame/labels/backlog",
  "name": "backlog",
  "color": "333333",
  "default": false
}
```

## Read More
https://developer.github.com/v3/issues/labels/
