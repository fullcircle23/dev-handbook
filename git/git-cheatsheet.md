# 📝 Git Cheat Sheet – Quick & Pro Edition

---

# 📄 Page 1 – Core Git Commands

## 🔹 Setup
```bash
git config --global user.name "Your Name"
git config --global user.email "you@email.com"
git config --list
````

## 🔹 Start a Project

```bash
git init              # Start new repo
git clone <url>       # Clone existing repo
```

## 🔹 Everyday Workflow

```bash
git status            # Check status
git add <file>        # Stage file
git add .             # Stage all changes
git commit -m "msg"   # Commit with message
git log               # View commit history
```

## 🔹 Branching & Merging

```bash
git branch            # List branches
git branch <name>     # Create new branch
git checkout <name>   # Switch to branch
git checkout -b <n>   # Create + switch
git merge <branch>    # Merge branch
```

## 🔹 Remotes

```bash
git remote -v                  # List remotes
git remote add origin <url>    # Add remote
git fetch                      # Get updates
git pull origin main           # Pull updates
git push origin <branch>       # Push changes
```

## 🔹 Undo Basics

```bash
git checkout -- <file>         # Discard changes
git reset <file>               # Unstage file
git reset --hard               # Reset to last commit
git revert <commit>            # Undo by new commit
```

✅ **Remember:** Most of your daily flow =
`status → add → commit → pull → push`

---

# 📄 Page 2 – Advanced Git Commands (with diagrams)

## 🔹 Fix & Recovery

```bash
git commit --amend             # Edit last commit
```

```
Before: A---B (HEAD)
After : A---B' (HEAD)   ← replaces B
```

```bash
git reflog                     # Show full history (recover lost commits)
```

👉 Lets you go back even after reset/checkout.

---

## 🔹 Debugging

```bash
git bisect start
git bisect good <hash>
git bisect bad <hash>
```

```
Good: A---B---C   Bad: F
             \
              D---E---F
```

👉 Git auto-checks commits between *good* and *bad* to find the culprit.

---

## 🔹 History & Logs

```bash
git log --oneline --graph --all --decorate
```

Example output:

```
* a1b2 (main) Fix bug
| * c3d4 (feature) Add new fn
|/
* e5f6 Init
```

```bash
git shortlog -sn               # Commits by author
git show :/<text>              # Find commit by message
git range-diff branch1 branch2 # Compare histories
```

---

## 🔹 Selective Changes

```bash
git add -p                     # Stage hunks interactively
git stash -p                   # Stash hunks interactively
git stash list                 # View stashes
git stash pop                  # Reapply last stash
```

---

## 🔹 Code Inspection

```bash
git diff --word-diff            # Word-level changes
git blame <file>                # Who changed what
git blame -L 10,20 <file>       # Blame specific lines
git grep "pattern"              # Search code fast
```

---

## 🔹 Power Tools

```bash
git cherry-pick <commit>
```

```
main:    A---B---C---D
feature:       \---X
cherry-pick X → A---B---C---D---X'
```

```bash
git rebase main
```

```
Before:  main: A---B
          feat:     \---C---D
After :  main: A---B---C'---D'
```

```bash
git merge feature
```

```
main:  A---B
         \---C---D
Merged:   A---B---M
             /   \
         (main) (feature)
```

```bash
git worktree add ../dir branch
```

👉 Lets you check out multiple branches in separate folders at once.

```bash
git clean -fd                   # ⚠️ Deletes untracked files
```

👉 Great for restoring a clean working tree.

```bash
git submodule update --init --recursive
git archive --format=zip HEAD > repo.zip
```

---

💡 **Pro tip:**
Pretty log for scripts or reviews:

```bash
git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short
```

---
