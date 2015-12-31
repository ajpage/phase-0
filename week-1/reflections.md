## 1.1 Think about time

I learned about time boxing, meditation and starting small as time management and productivity ideas.  Time boxing is the practice of doing a task for a predetermined amount of time and then assessing progress at the end of that time. This can be used during Phase 0 during the challenges by setting out to work on them for a certain amount of time and then taking a break instead of working on them to completion. This way when you get stuck there is a predetermined stopping point. I currently use a system of "to-do" lists and something similar to time boxing where I give myself a time limit for a task and if it is not done I move on to something else and come back to it when I have time. This works well for things that I would otherwise procrastinate on because I know I only have to do them for 20 minutes (or however long) but I can struggle with stopping during an enjoyable activity. I will employ starting small to ease the anxiety of having to complete huge tasks. By breaking big jobs down into smaller more manageable items and giving myself a time limit on them I hope to make the work less overwhelming. For Phase 0 my time management will focus on doing something every day for at least 20 minutes and just doing something even if it is small. I will also put more focus on meditating and making that more of a daily habit. 

## 1.2 The Command Line

A shell is a user interface to perform commands given, bash acts as the shell program for most unix systems. Moving around using pushd and popd was confusing at first, but after i went through it for a second time after taking a break I could make more sense of it. It took a few tries to get cp right but I was able to use all of the commands. I think grep and wildcard matching are very powerful to be able to find files quickly without having to manually search through a file hierarchy.

pwd - print working directory
ls - list directory contents
mv - move file
cd - change directory
../ - goes up one directory in the heirarchy
touch - creates an empty file
mkdir - makes a directory
less - pages though a file
rmdir - removes a directory
rm - removes a file
help - (man in unix) brings up information about commands

## 1.4 Forking and Cloning

Create a new repo 
1. Go to your GitHub profile page
2. Click the + left of your name and select "New Repository"
3. On your new repository page give it a name, select if it will be public or private and add a license and/or README if applicable 
4. Click the "create repository" button when finished and you are done!

Fork a repo
1. Navigate to the repo that you want to fork
2. Select the "fork" button and if you belong to multiple organizations select the one you want to fork it to. 
3. When it has been forked GitHub will redirect to your own forked copy of the repo. This will be apparent because your username will appear in front of the repo name

Forking a repo lets you work on a repository that has already been created and make changes without affecting the master copy. 

Clone a repo
1. Go to your forked repo and find the URL (this could be HTTP or SSH if you have a key) and copy it
2. In your terminal go to the directory you wish to clone into
3. Once there type git clone URL replacing "URL" with the clone URL you copied
4. If prompted, enter your GitHub username and password
5. Once the command prompt appears again type ls to see that the repo has been cloned into your directory

In setting up git and GitHub I learned how to clone a repository to my computer and open it with sublime in my terminal. I had to research the command to open the cloned repo in sublime, but the instructions were very straight forward and made it easy to learn. 