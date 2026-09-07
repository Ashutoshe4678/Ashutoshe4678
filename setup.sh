#!/bin/bash

echo "============================================================"
echo " 🚀 GitHub Profile Dashboard Repository Setup - Ashutoshe4678 "
echo "============================================================"
echo ""

# Initialize Git if not initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing local Git repository..."
    git init
    git branch -M main
else
    echo "✔ Local Git repository already initialized."
fi

# Stage and commit
echo "💾 Staging files and creating initial commit..."
git add .
git commit -m "✨ feat: Initialize ultimate GitHub profile dashboard README & workflows"

# Check gh CLI
if command -v gh &> /dev/null; then
    echo "🐙 GitHub CLI (gh) detected!"
    read -p "Would you like to automatically create the repo 'Ashutoshe4678' on GitHub using 'gh'? (y/n) " resp
    if [[ "$resp" =~ ^[Yy]$ ]]; then
        gh repo create Ashutoshe4678 --public --source=. --remote=origin --push
        echo "🎉 Repository successfully created and pushed to https://github.com/Ashutoshe4678/Ashutoshe4678 !"
        exit 0
    fi
fi

echo ""
echo "------------------------------------------------------------"
echo "📌 MANUAL DEPLOYMENT INSTRUCTIONS:"
echo "1. Go to https://github.com/new"
echo "2. Create a public repository named exactly: Ashutoshe4678"
echo "   (Make sure NOT to initialize it with README, .gitignore, or license)"
echo "3. Run the following commands in your terminal:"
echo "   git remote add origin https://github.com/Ashutoshe4678/Ashutoshe4678.git"
echo "   git push -u origin main"
echo "------------------------------------------------------------"
echo ""
echo "✨ Done! Your GitHub profile dashboard will automatically update once pushed."
