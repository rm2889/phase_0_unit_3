## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
Its the first step towards pushing changes made from the local repo to the remote repo.
Adds changes to the staging area
<!-- Your defnition here -->

#### branch
When I do git branch, I can see all the branches in this repo. To create a new branch, I do git branch branch_name
<!-- Your defnition here -->

#### checkout
Used to load previous commits. Once you've done that, the head is detached! What that means is you're in some older version of your code, which once you're done with, you're gonna need to get out of that state to arrive at the current project state.
<!-- Your defnition here -->

#### clone
So when I do git clone, I usually navigate to the folder where I want to store the local repo, and do:
git clone <online repo link> 
This copies an existing git repository to your folder as a local copy.
<!-- Your defnition here -->

#### commit
Use this command after add -> this adds the changes to the project's history, where it remains unless you explicitly ask for it to be removed - the project snapshot is committed to the local repo
<!-- Your defnition here -->


#### fetch
Its a safe way to fetch the remote repo, without changing anything that you've worked on. Its done to see what everyone else is working on - Since fetched content is stored in a remote branch, it doesn't affect your local repo. So its a safe way of reviewing others' commits before integrating them with our local repo
<!-- Your defnition here -->

#### log
shows you the entire project history
<!-- Your defnition here -->

#### merge
git merge branch1 will merge the branch branch1 into the current branch
<!-- Your defnition here -->

#### pull
pulls changes in the remote repo to your local repo. It is doing the job of git fetch and git merge at the same time
<!-- Your defnition here -->

#### push
Pushes your committed changes from the local repo to the remote repo
<!-- Your defnition here -->

#### reset
Should only be used to undo local changes - is used to undo changes made
<!-- Your defnition here -->

#### rm
Used to remove a file from source control. 
<!-- Your defnition here -->

#### status


## Release 3: Git Workflow

- Push files to a remote repository
	- git add .
	- git commit -m "message"
	- git push

- Fetch changes
	- git fetch upstream
	- git merge upstream/master

- Commit locally
	- git add.
	- git commit -m "message"
