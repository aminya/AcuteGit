git filter-branch --index-filter 'git rm --cached --ignore-unmatch ./dist/*.js' c00b95030f1e495f796ffd7b3d420a0a711da4df..HEAD
git filter-branch --index-filter 'git rm --cached --ignore-unmatch ./dist/*.d.ts' c00b95030f1e495f796ffd7b3d420a0a711da4df..HEAD
git filter-branch --index-filter 'git rm --cached --ignore-unmatch ./lib/*.js' c00b95030f1e495f796ffd7b3d420a0a711da4df..HEAD
git filter-branch --index-filter 'git rm --cached --ignore-unmatch ./lib/*.d.ts' c00b95030f1e495f796ffd7b3d420a0a711da4df..HEAD

git filter-branch --index-filter 'git rm --cached --ignore-unmatch ./dist/tsconfig.tsbuildinfo' c00b95030f1e495f796ffd7b3d420a0a711da4df..HEAD
git filter-branch --index-filter 'git rm --cached --ignore-unmatch ./lib/tsconfig.tsbuildinfo' c00b95030f1e495f796ffd7b3d420a0a711da4df..HEAD

git filter-branch --index-filter 'git reset --mixed 2ebe71af1f99b532c6bfa807f101b60f27cc0dd1 --ignore-unmatch package-lock.json' 2ebe71af1f99b532c6bfa807f101b60f27cc0dd1..HEAD

git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d
