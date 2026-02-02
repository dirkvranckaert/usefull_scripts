#!/bin/bash

CUR_DIR=$(pwd)

echo -e "\n\033[1mPulling in latest changes for all repositories...\033[0m"

for i in $(find . -name ".git" | cut -c 3-); do
    folder=$(printf '%s\n' "${i//\/.git/}")

    # Go to folder
    cd $folder

    # Pull current branch
    branch=$(git branch | grep \* | cut -d ' ' -f2)
    echo "";
    echo -e "\033[33m$folder\033[0m \033[32m($branch)\033[0m ";
    git pull origin $branch;

    # Go back to root
    cd $CUR_DIR
done

echo -e "\n\033[32mComplete!\033[0m\n"
