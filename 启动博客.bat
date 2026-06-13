@echo off
chcp 65001 >nul 2>&1
title 🌸 安琪的博客 - 启动服务器

echo ========================================
echo   正在启动博客系统开发服务器...
echo ========================================
echo.

cd /d "%~dp0"

:: 检查 node_modules 是否存在
if not exist "node_modules" (
    echo 正在安装依赖，请稍候...
    call npm install
    echo.
)

:: 启动开发服务器
echo 启动成功！请在浏览器中打开以下地址：
echo   http://localhost:5173
echo.
echo 按 Ctrl + C 可以停止服务器
echo ========================================
echo.

call npx vite --host 0.0.0.0 --port 5173

pause
