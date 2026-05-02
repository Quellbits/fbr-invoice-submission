#!/bin/bash

# Script to push FBR Invoice Submission to GitHub

echo "🚀 FBR Invoice Submission - GitHub Push Script"
echo "================================================"
echo ""

# Check if remote already exists
if git remote get-url origin &>/dev/null; then
    echo "✅ Remote 'origin' already configured:"
    git remote -v
    echo ""
    read -p "Push to existing remote? (y/n): " confirm
    if [ "$confirm" = "y" ]; then
        git push -u origin main
        exit 0
    fi
fi

# Get repository URL
echo "Please provide your GitHub repository URL"
echo "Example: https://github.com/yourusername/fbr-invoice-submission.git"
echo ""
read -p "GitHub repository URL: " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ Error: Repository URL is required"
    exit 1
fi

# Add remote
echo ""
echo "📡 Adding remote repository..."
git remote add origin "$repo_url" 2>/dev/null || git remote set-url origin "$repo_url"

# Push
echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Next steps:"
    echo "1. Go to your repository on GitHub"
    echo "2. Settings → Pages"
    echo "3. Select branch: main, folder: / (root)"
    echo "4. Your site will be live in a few minutes!"
else
    echo ""
    echo "❌ Error pushing to GitHub"
    echo "Please check:"
    echo "- Repository URL is correct"
    echo "- You have access to the repository"
    echo "- You're authenticated with GitHub"
fi