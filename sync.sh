#!/bin/bash

echo "🔄 Pulling latest changes..."
git pull origin main

echo "📂 Staging changes..."
git add .

if [ -z "$1" ]; then
  echo "📝 No commit message provided."
  read -p "Enter commit message: " msg
else
  msg=$1
fi

git commit -m "$msg"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Sync complete!"
