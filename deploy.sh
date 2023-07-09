#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

git config --global user.name "mqjd"
git config --global user.email "1378415278@qq.com"

giteeUrl=https://MQJD:${GITEE_TOKEN}@gitee.com/MQJD/assets.git

rm -rf .git

git init
git add -A
git commit -m "来自github actions的自动部署"

git push -f $giteeUrl master # 推送到gitee

curl https://purge.jsdelivr.net/gh/mqjd/assets@main