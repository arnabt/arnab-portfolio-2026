#!/bin/bash

# A simple script to quickly deploy your local changes to GitHub Pages

echo "🚀 Preparing to publish your changes to GitHub..."

# Step 1: Add all current changes
git add .

# Step 2: Commit them with a message (default to "Update website" if none provided)
COMMIT_MSG=${1:-"Update website"}
git commit -m "$COMMIT_MSG"

# Step 3: Push to GitHub securely
echo "📤 Uploading to GitHub..."
git push origin main

echo "✅ All done! Your changes are live on GitHub Pages. Note: It may take 1-2 minutes for the live website to reflect the changes."
