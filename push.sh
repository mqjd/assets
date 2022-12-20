#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

imgs=$(find imgs/img -name highcompress*)
for img in $imgs
do
    mv $img ${img/highcompress_/}
done

git add .
git commit -m "update assets"
git push