#!/bin/bash
echo "========================"
git config --global user.name ${GITHUB_ACTOR}
git config --global user.email ${INPUT_EMAIL}
git config --global safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "feat: update feed"
git push --set-upstream origin main

echo "========================"