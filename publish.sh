#!/bin/sh
shopt -s extglob dotglob

CURR_DIR="$(pwd)"
TMP_DIR="$CURR_DIR"-gh-pages

sh build.sh

rm -rf "$TMP_DIR"
cp -r . "$TMP_DIR"
cd "$TMP_DIR"

git branch -D gh-pages
git checkout --orphan gh-pages
rm -rf !(.git|.gitignore)

cp -r "$CURR_DIR"/_build/html/* .
touch .nojekyll
echo "droidparts.org" > CNAME

git add -A
git commit -m "published"
git push origin :gh-pages
git push origin gh-pages

rm -rf "$TMP_DIR"
