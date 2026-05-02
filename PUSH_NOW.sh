#!/bin/bash

# Script to test SSH connection and push to GitHub

echo "🔍 Testing SSH connection to GitHub..."
ssh -T git@github.com

echo ""
echo "📤 Pushing to GitHub..."
cd "/Users/miransmac/Desktop/postman fbr"
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Next steps:"
    echo "1. Go to: https://github.com/Quellbits/fbr-invoice-submission"
    echo "2. Settings → Pages"
    echo "3. Select branch: main, folder: / (root)"
    echo "4. Your site will be live at: https://quellbits.github.io/fbr-invoice-submission/"
else
    echo ""
    echo "❌ Push failed. Make sure you've added the SSH key to GitHub."
    echo "Go to: https://github.com/settings/keys"
fi