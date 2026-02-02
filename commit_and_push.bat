@echo off
:: Clear the screen
cls

:: Get the branch name
set /p git_branch="If you want to use a branch other than the main one, input its name here. Otherwise, just press ENTER: "
if not "%git_branch%"=="" (
    git branch -M "%git_branch%"
) else (
    set git_branch="master"
)

:: Ask if the user wants to add files to staging
set /p git_add="Track all changed files? (yes/no): "
if /i "%git_add%"=="yes" (
    git add .
)

:: Get the commit message
set /p git_commit_message="Enter commit message: "
if not "%git_commit_message%"=="" (
    git commit -m "%git_commit_message%"
)

:: Ask if the user wants to push
set /p git_push="Push (upload) to branch '%git_branch%'? (yes/no): "
if /i "%git_push%"=="yes" (
    git push -u origin "%git_branch%"
)

pause