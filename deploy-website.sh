#!/bin/bash

# Website Deployment Script for GitHub Pages
# This script helps you deploy your website to GitHub Pages

echo "🚀 Deploying School Management System Website..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Not in a git repository. Please initialize git first."
    echo "💡 Run: git init"
    exit 1
fi

# Check if we have a remote origin
if ! git remote get-url origin &> /dev/null; then
    echo "❌ No remote origin found. Please add your GitHub repository."
    echo "💡 Run: git remote add origin https://github.com/yourusername/your-repo.git"
    exit 1
fi

# Create docs folder for GitHub Pages
echo "📁 Creating docs folder..."
mkdir -p docs

# Copy website files to docs
echo "📋 Copying website files..."
cp index.html docs/
cp README.md docs/

# Create a simple CNAME file (optional)
echo "🌐 Creating CNAME file..."
echo "your-domain.com" > docs/CNAME

# Add and commit changes
echo "💾 Committing changes..."
git add docs/
git commit -m "Deploy website to GitHub Pages"

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push origin main

echo "✅ Website deployed successfully!"
echo ""
echo "📝 Next Steps:"
echo "1. Go to your GitHub repository"
echo "2. Go to Settings → Pages"
echo "3. Set Source to 'Deploy from a branch'"
echo "4. Select 'main' branch and '/docs' folder"
echo "5. Click Save"
echo ""
echo "🌐 Your website will be available at:"
echo "   https://yourusername.github.io/your-repo-name/"
echo ""
echo "💡 To use a custom domain:"
echo "1. Add your domain to docs/CNAME"
echo "2. Configure DNS settings"
echo "3. Wait for propagation (up to 24 hours)" 