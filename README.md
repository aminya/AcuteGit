# My Git Commands
My most used git commands for the operations that are not available through GitHub desktop software (https://desktop.github.com/) and [Tortoise git](https://tortoisegit.org/download/)

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

## Rename a file:
Open the git bash in the folder that file exits (hold shift and right click and select open bash here on Windows)
```
git mv old_filename new_filename
```

## Fork Forced Sync
```
git fetch upstream
git reset --hard upstream/master
git push -f
```

## Move commits between branches
```
git checkout newbranch
git cherry-pick 87ea90d1~1..b4167564
```
or
```
git cherry-pick d198f1d
```
Don't forget ~1


## Edit a deep commit
Save and stash your work so far, like before.
Make the fix, and commit without amend mode: `git commit -a -m "Foo"`
Look at git log and copy the first 5 or so characters from the ID of the one commit before the old commit onto your clipboard.
Start the interactive rebase process, pasting in the characters from the ID: `git rebase --interactive ID`
Your editor will come up with several lines like `pick d3adb33` Commit message, one line for each commit since the older one.
For the most recent commit, change the word "pick" to "squash" at the start of the line. (This tells Git to combine it back into the one before it.)
Use your editor to reorder the lines, putting the line for the most recent commit just after the older commit you want to fix.
Save and quit your editor.
The editor will come up again, this time asking you for the commit message for the combined commit. Delete or comment out the newer, temp message ("Foo").
Save and quit your editor.
Git does its magic, squashing those two commits together, and recreating all the commits since then.
Re-apply the stash and continue happily with your life


## Sub-modules

### Add a submodule to a repository

Right-Click, Add Sub-module, then:
![](images/add.jpg)


or using git commands
```
git submodule add git@github.com:url_to/awesome_submodule.git path_to_submodule
```

### Download (Initialize) the submodule:
Right-Click, Update Sub-module, then:
![](images/init.jpg)

or using git commands:
```
git submodule update --init --recursive
```

### Update the submodule (if that repository changes):

Right-Click, Update Sub-module, then:
![](images/update-submodue.jpg)

or using git commands:
```
git submodule update --remote --merge
```
