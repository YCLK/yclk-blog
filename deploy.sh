#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo -t PaperMod

# blog 저장소 Commit & Push
git add .

msg="🔥 블로그 업데이트 `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

## master 대신 각자 연결한 branch 명으로 수정하면 된다.
git push origin master