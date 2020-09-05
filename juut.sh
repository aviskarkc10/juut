#!/usr/bin/env bash

new_commit_msg=`head -n1 $1`
last_commit_msg=`git log -1 HEAD --pretty=format:%s`

if [ "$new_commit_msg" = "$last_commit_msg" ];
then
    echo "\033[31m x Commit Failed"
    echo "\033[0mYour last commit message is the same as the previous one."
    echo "Write a new message that describes the changes you made."
    echo "Or to update your last commit with recent changes use:"
    echo ""
    echo "          git commit --amend."
    echo ""
    exit 1
fi
