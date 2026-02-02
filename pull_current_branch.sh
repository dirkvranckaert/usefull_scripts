#!/bin/bash
branch=$(git branch | grep \* | cut -d ' ' -f2)
echo -e "Pulling changes from \033[32m($branch)\033[0m...";
git pull origin $branch;
echo -e "\n\033[32mComplete!\033[0m\n"
