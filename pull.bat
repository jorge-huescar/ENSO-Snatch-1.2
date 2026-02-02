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
set /p git_add="Pull (download) from the online repository branch %git_branch%? (yes/no): "
if /i "%git_add%"=="yes" (
    git add .
)

pause