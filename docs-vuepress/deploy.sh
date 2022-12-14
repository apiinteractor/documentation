#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd src/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:apiinteractor/apiinteractor.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://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@github.com:apiinteractor/documentation.git master:gh-pages

cd -