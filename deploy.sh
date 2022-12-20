#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

git config --global user.name "mqjd"
git config --global user.email "1378415278@qq.com"

giteeUrl=https://MQJD:${GITEE_TOKEN}@gitee.com/MQJD/mqjd.git

git push -f $giteeUrl master # 推送到gitee