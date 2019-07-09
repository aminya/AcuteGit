# My Git Commands
My most used git commands for the operations that are not available through github desktop software (https://desktop.github.com/).

For github desktop documentation refer to:
https://help.github.com/en/desktop/getting-started-with-github-desktop

# Best practice to use Github for me:
This way you don't need to merge conflicts of pull requests and all that.

* Check out to master

	```
	git checkout master
	```
* Commit as many as you want using Github Desktop
* Backup your master branch with its several commits 

	```
	git checkout backup
	```
* Check out to master again

	```
	git checkout master
	```
* squash commits.

	```
	git rebase --interactive 6c36bcb04f22ad5fda24923bb58eac78ad1f0914
	```
	then 
	```
	git push --force
	```


## Change text editor
For squashing commits you need this. Replace your text editor at least with notepad)
##### For notepad
```
git config --global core.editor notepad
```

##### For notepad++
x64
```
git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```
x86
```
git config --global core.editor "'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```
##### For sublime
x64
```
git config --global core.editor "'C:/Program Files/sublime text 3/subl.exe' -w"
```
x86
```
git config --global core.editor "'C:/Program Files (x86)/sublime text 3/subl.exe' -w"
```

## Delete a branch
```
git checkout master
git push --delete origin branch_Name
git branch -D branch_Name
```
## Copy current branch to a new branch 
```
git checkout -b new_Branch_Name
```
## Squash commits (merge)
use the commit ID of one commit before your first commit, 
```
git rebase --interactive 0ca4f4376f04eee6599a4b2e17255357fb888422
```
When editor is opened, 
replace pick which squash, 
make the first squash pick again. (All other commits will be merged to this one)
Save and close the first editor, 
the second editor will be opened for editing comments. 
Use the first line and some enters after that as the title. 
Write your comments below that (things after # are ignored)
In the end:
```
git push --force
```
Alternative method with number (not much useful)
```
git rebase --interactive HEAD~[53]
```
## Reword last commit's comment
```
git commit --amend -m "title" -m "

Your comment here
use enter for different lines

"
```
```
git push --force
```
## Merge branch to master
```
git checkout master
git merge other_Branch
git push --force
```
## Remove last commit
use the id one before that
```
git reset --hard e78df3ad58a71eca510a76b716404841d6d4fe20
git push --force
```
or
```
git reset --hard HEAD^
git push origin -f
```

## Rename branch:
```
git checkout old_name
git branch -m new_name
git push origin --delete old_name
git push origin -u new_name
```
