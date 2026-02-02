#!/bin/bash

# GitHub Pages 部署脚本

echo "🚀 开始部署到 GitHub Pages..."

# 检查是否已经是 git 仓库
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
    git branch -M main
fi

# 检查远程仓库
if ! git remote | grep -q "origin"; then
    echo "🔗 添加远程仓库..."
    git remote add origin https://github.com/DYamIK/1.github.io.git
else
    echo "✓ 远程仓库已存在"
fi

# 添加所有文件
echo "📝 添加文件..."
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "Deploy website to GitHub Pages - $(date '+%Y-%m-%d %H:%M:%S')"

# 推送到 GitHub
echo "📤 推送到 GitHub..."
git push -u origin main

echo ""
echo "✅ 部署完成！"
echo ""
echo "🌐 网站将在几分钟后可访问："
echo "   https://dyamik.github.io/1.github.io/"
echo "   或者（如果是用户站点）："
echo "   https://1.github.io/"
echo ""
echo "⚠️  如果这是首次部署，请确保："
echo "   1. 仓库是公开的（Public）"
echo "   2. 在仓库设置中启用了 GitHub Pages"
echo "   3. 访问：https://github.com/DYamIK/1.github.io/settings/pages"
echo ""
