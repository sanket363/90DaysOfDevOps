# Day 9 Task: Deep Dive in Git & GitHub for DevOps Engineers.

## Find the answers by your understandings(Shoulden't be copied by internet & used hand-made diagrams)  of below quistions and Write blog on it.

1) What is Git and why is it important?
Ans. Git is like a notebook for computer code. It helps keep track of all the changes made to a project over time, and it makes it easier for multiple people to work on the same project together. With Git, you can go back to earlier versions of the code if needed, and it helps keep everything organized. It's important because it helps make software development faster, more reliable, and smoother for everyone involved.

2) What is difference Between Main Branch and Master Branch??
Ans. In Git, the "main" and "master" branches are like the main road in a map. They're both used to get to the latest and most important version of the code in a project. People used to call it the "master" road, but now they mostly use the name "main" road, as it is more neutral. Either way, they mean the same thing.

3) Can you explain the difference between Git and GitHub?
Ans. Think of Git as a toolbox for building software and GitHub as a big tool shed to store all the toolboxes. Git helps you keep track of the changes you make to your software project, and GitHub is a place to store your project and share it with others. You use Git to build and manage your code, and you use GitHub as a home for your code where you can keep it safe and share it with other people.

4) How do you create a new repository on GitHub?
Ans. To create a new repository on GitHub:

i)   Go to GitHub and sign in to your account.
ii)  Click on the "+" sign in the top right corner.
iii) Choose "New repository".
iv)  Give your new home a name and a short description (optional).
v)   Decide if you want to make it public or private.
vi)  Click "Create repository".

5) What is difference between local & remote repository? How to connect local to remote?
Ans. Imagine you have a code project on your computer, and you want to share it with others. You need two places to store the code: one on your own computer (the local repository), and one on a server (the remote repository).

Here's how you can connect the two:

1.Make a new "home" for your code on a server like GitHub.
2.Open the code project on your own computer using the terminal.
3.Tell the code project on your computer about the "home" you made for it on the server using this command:
git remote add origin [remote repository URL]
4.Move the code from your computer to the "home" on the server using this command:
git push -u origin master

## Tasks

task-1: 
- Set your user name and email address, which will be associated with your commits.
Ans. You can set your username and email address in Git by using the following commands:
1. Set your username:
   git config --global user.name "Your Name"

2. Set your email address:
   git config --global user.email "your.email@example.com"

3. Now, every time you make a commit in Git, your username and email address will be associated with the commit. You can verify the settings by using the following command:
   git config --list

task-2: 
- Create a repository named "Devops" on GitHub
Ans. To create a repository named "Devops" on GitHub, please follow these steps:

1. Log in to your GitHub account.
2. Click on the "+" sign in the top right corner and select "New repository".
3. Enter "Devops" as the repository name.
4. Enter a description (optional).
5. Choose whether to make the repository public or private.
6. Select whether to initialize the repository with a README file.
7. Click the "Create repository" button.

- Connect your local repository to the repository on GitHub.
Ans. To connect your local repository to a repository on GitHub, follow these steps:

1. Open the terminal in your local repository.
2. Use the following command to add a remote connection to the repository on GitHub:
   git remote add origin [GitHub repository URL]
3. Push your local repository to the repository on GitHub using the following command:
   git push -u origin master
Now, your local repository is connected to the repository on GitHub. You can push changes made to your local repository to the repository on GitHub and pull changes from the repository on GitHub to your local repository.

- Create a new file in Devops/Git/Day-02.txt & add some content to it
Ans. 
1. Open the terminal in your local repository.
2. Navigate to the directory where you want to create the new file using the cd command.
3. Create a new file named "Day-02.txt" using the following command:
   touch Devops/Git/Day-02.txt
4. Open the file in a text editor, such as nano or vim, and add your desired content:
   nano Devops/Git/Day-02.txt
5. Save the file and exit the text editor.

- Push your local commits to the repository on GitHub
Ans. To push your local commits to the repository on GitHub, follow these steps:

1. Open the terminal in your local repository.
2. Check the status of your local repository using the following command:
   git status
3. Stage the changes you want to push to the repository on GitHub using the following command:
   git add .
4. Commit the changes using the following command:
   git commit -m "Your commit message"
5. Push the changes to the repository on GitHub using the following command:
   git push

reff :- https://youtu.be/AT1uxOLsCdk


Note: These steps assume that you have already installed Git on your computer and have created a GitHub account. If you need help with these prerequisites, you can refer to the [day-08](https://github.com/LondheShubham153/90DaysOfDevOps/blob/ee7c53f276edb02a85a97282027028295be17c04/2023/day08/tasks.md)
