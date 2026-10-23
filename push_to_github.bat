@echo off
chcp 65001 > nul
echo ==============================================
echo  Moff隊 釣果記録帳 - GitHub Push Script
echo ==============================================
git status
echo.
set /p commit_msg="コミットメッセージを入力してください (未入力の場合は「Update Moff App UI」): "
if "%commit_msg%"=="" set commit_msg=Update Moff App UI

git add .
git commit -m "%commit_msg%"
git push origin main

echo.
echo ==============================================
echo  Pushが完了しました！
echo ==============================================
pause
