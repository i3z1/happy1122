@echo off
REM Set your repository URL here
set REPO_URL=https://github.com/i3z1/happybirthday1.git

REM Initialize Git if it hasn't been initialized
git init

REM Create README.md if it doesn't exist
if not exist README.md (
    echo # happybirthday1 > README.md
)

REM Add all files to Git staging
git add .

REM Commit changes with a message
git commit -m "first commit"

REM Rename the branch to main
git branch -M main

REM Add remote origin
git remote add origin %REPO_URL%

REM Push to GitHub
git push -u origin main

REM Check if the push was successful
if %errorlevel% neq 0 (
    echo Push failed. Please check your internet connection, GitHub permissions, and repository URL.
) else (
    echo Push succeeded!
)

pause
