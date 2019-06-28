# myGitCommands

# changing note editor

# for notepad
git config core.editor notepad

# for sublime or notepad++
git config --global core.editor \
"'C:/Program Files/Sublime Text 3/sublime_text.exe' -multiInst -notabbar -nosession -noPlugin"

git config --global core.editor \
"'C:/Program Files/Sublime Text 3/sublime_text.exe' -multiInst"

# deleting a branch
git checkout master
git push --delete origin branch
git branch -D branch


# copy current branch to a new branch 
git checkout -b new_branch

# copying squashed feature
git checkout -b squashed_feature

# squashing commits
# use the commit ID of one commit before your first commit, replace pick which squash, make the first squash pick again. all other commits will be merged to this one
git rebase --interactive 5c63ce3029fd372fb63d07d77c74cfae1c377ab1
git push --force


# with number (use previous method instead)
git rebase --interactive HEAD~[53]

# reword last commit's comment
git commit --amend -m "title" -m "

comment ......

		"

git push --force

# merge branch
git checkout master
git merge other_branch
git push --force

# remove last commit
# use the id one before that
git reset --hard e78df3ad58a71eca510a76b716404841d6d4fe20
git push --force

# or
git reset --hard HEAD^
git push origin -f


# rename branch:
git checkout <old_name>
git branch -m <new_name>
git push origin --delete <old_name>
git push origin -u <new_name>

# for example:
git checkout non_squashed_feature
git branch -m debug
git push origin --delete non_squashed_feature
git push origin -u debug
