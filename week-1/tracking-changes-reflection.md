How does tracking and adding changes make developers' lives easier?
- Tracking and adding changes makes it easier to revert back to an older version or just compare different versions of code. 

What is a commit?
- A commit records a snapshot of the changed code with your name and email address

What are the best practices for commit messages?
-The first line should be a short description followed by the body with a full description in the imperative. 

What does the HEAD^ argument mean?
-The last commit made

What are the 3 stages of a git change and how do you move a file from one stage to the other?
- modified in working directory - has been changed but not staged
  once added to the staging area using git add it is stages
  then when it is in the directory it is committed using git commit

Write a handy cheatsheet of the commands you need to commit your changes?
-make changes in sublime and save them
 check git status
 git add branch-name to stage
 git commit -m "your message here"

What is a pull request and how do you create and merge one?
-A pull request merges code from a different branch into the master branch
 After pushing to GitHub create a pull request by selecting the compare and pull request button. Verify the base and comparison branches are correct and then fill in the title and description. Then select create pull request to create a pull request.

Why are pull requests preferred when working with teams?
- Pull requests allow teams to review code together. Teams are able to see and review the changes and comment of them.