# 🚀 Deploy to GitHub Pages - Step by Step

## Step 1: Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the **"+"** icon in the top right → **"New repository"**
3. Fill in:
   - **Repository name**: `fbr-invoice-submission` (or any name you prefer)
   - **Description**: "FBR Invoice Submission API Tools"
   - **Visibility**: Choose Public or Private
   - **DO NOT** initialize with README, .gitignore, or license (we already have these)
4. Click **"Create repository"**

## Step 2: Connect and Push

After creating the repository, GitHub will show you commands. Use these:

```bash
cd "/Users/miransmac/Desktop/postman fbr"

# Add the remote repository (replace YOUR_USERNAME and REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Rename branch to main if needed
git branch -M main

# Push to GitHub
git push -u origin main
```

**Or if you prefer SSH:**
```bash
git remote add origin git@github.com:YOUR_USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. Scroll down to **Pages** (left sidebar)
4. Under **Source**, select:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
5. Click **Save**
6. Wait a few minutes for GitHub to build your site

## Step 4: Access Your Live Site

Your site will be available at:
```
https://YOUR_USERNAME.github.io/REPO_NAME/
```

For example:
- If username is `john` and repo is `fbr-invoice-submission`
- URL: `https://john.github.io/fbr-invoice-submission/`

## ✅ Done!

Your FBR invoice submission tool is now live on GitHub Pages!

---

## 🔄 Updating Your Site

Whenever you make changes:

```bash
cd "/Users/miransmac/Desktop/postman fbr"
git add .
git commit -m "Your commit message"
git push
```

GitHub Pages will automatically update (may take 1-2 minutes).

---

## 🛠️ Troubleshooting

### If you get authentication errors:
- Use GitHub Personal Access Token instead of password
- Or set up SSH keys

### If Pages doesn't work:
- Make sure `index.html` is in the root directory
- Check that the branch is set to `main` in Pages settings
- Wait a few minutes for GitHub to process

### Custom Domain (Optional):
- Go to Pages settings
- Add your custom domain
- Follow DNS configuration instructions