#!/bin/bash

latest_tag=$(git describe --tags --abbrev=0)

commit_messages=$(git log --pretty=format:"%s" ${latest_tag}..HEAD)

echo "Release not is being generated.........." > releaseNotes.txt
echo "${commit_messages}" >> releaseNotes.txt

echo "Release note generated"
