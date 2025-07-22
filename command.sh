"# REPO_URL https://github.com/theShrijith/react-collab-project" 
# 1. Create React app
npx create-react-app my-app
cd my-app

# 2. Initialize Git repo and login to GitHub CLI
git init
gh auth login

# 3. First commit and push
git add .
git commit -m "Initial commit"
gh repo create react-collab-project --public --source=. --remote=origin
git push -u origin main

# 4. Create new branch
git checkout -b update-header

# 5. Update logo.svg and homepage link manually in App.js and logo.svg

# 6. Add + commit
git add .
git commit -m "Updated logo and homepage link"

# 7. Push branch
git push origin update-header

# 8. Minor change to trigger PR (if needed)
echo "// trigger PR" >> src/temp.js
git add .
git commit -m "Minor update to trigger PR creation"
git push origin update-header

# 9. Create PR
gh pr create --base main --head update-header --title "Update logo and link" --body "Updated logo.svg and homepage link to simulate a product branding update."

# 10. Merge PR (if done via CLI)
gh pr merge --merge

# REPO_URL https://github.com/theShrijith/react-collab-project
