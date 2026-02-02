#!/bin/bash
branch=$(git branch | grep \* | cut -d ' ' -f2)
echo -e "Pushing changes to \033[32m($branch)\033[0m...";
git push origin $branch;
echo -e "\n\033[32mComplete!\033[0m\n"
