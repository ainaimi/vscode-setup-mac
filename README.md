# VSCode Setup

This repo[^1] contains some basic setup instructions and commands for installing Visual Studio Code and select extensions. 

One benefit of using VSCode is the availability of the [LiveShare](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) extension, which allows two or more people to edit the 
same codefile remotely. To learn more about LiveShare, see [this video](https://youtu.be/A2ceblXTBBc).

I like to collaborate with students and colleagues using R by working on the same .R or .Rmd file simultaneously, whether our 
meeting is in person or remote.

This repo contains some basic instructions and commands to get your computer into a state where we can work together.

## Install R Packages

To get this to work, you'll need to have R already installed on your computer (R version 3.4.0 or later). The first thing 
you'll need to do is to install some packages in R. To do this, open R as you typically would, and install the following:

```
install.packages("languageserver")
install.packages("httpgd")
```

## Install VSCode

Once these packages are installed, the following tasks need to be carried out:

1) Install VSCode
2) Install necessary VSCode Extensions, including:
    - LiveShare
    - R

There are at least two ways to carry out these tasks, but we'll focus on manual installation. This requires that you
[download and install VSCode](https://code.visualstudio.com/), open it up, and then install the LiveShare and R extensions
from within your newly installed VSCode. Note this process will work on MacOS and Windows systems. 

You may want to familiarize yourself with the [basics of VSCode](https://code.visualstudio.com/docs/introvideos/basics).
Note that this link has a useful [introductory video](https://youtu.be/B-s71n0dHUk). This will give you a sense of how the software
works so you can carry out the next steps.

If you've successfully installed VSCode, open it up and you should see the "Getting Started" or "Welcome" page, similar to the following:

![Example VSCode Welcome](./vscode_img.png)

Once installed, proceed to the next steps.

## Add VSCode to Command in PATH [optional]

Once you install VSCode, you'll need to open it and perform an operation within VSCode that adds VSCode to your "path." To 
do this, open VSCode, and then open the Command Palette within VSCode (the shortcut key for this on MacOS is "Command + Shift + P", and 
on Windows "Ctrl + Shift + P").

With the Command Palette open, type "shell command" and an option in the list that says "Shell Command: Install 'code' command in PATH." 
should present itself. Select this option, and approve any administrator requests that might arise. 

Successfully running the Shell Command option in the Command Palette will allow you to run VSCode from your command 
line (Terminal or Terminal Emulator). This step is not required, but will allow you to use the command line tools and funtions associated
with VS Code, which can be helpful.

## Install VSCode Extensions: Automated Script

After executing the shell command step, you're ready to install extensions from the command line. If you are working on MacOS, you can do this by 
copying the following code and running it in your Terminal or Terminal emulator (e.g., iTerm2): 

```
curl -s https://raw.githubusercontent.com/ainaimi/vscode-setup-mac/refs/heads/main/install-func.sh | /bin/bash
```

If you are working on a Windows machine, you can do this by copying the following code and running it a Windows Powershell prompt:

```
# Step 1: Download the script
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/ainaimi/vscode-setup-mac/refs/heads/main/install-vscode-extensions.ps1" -OutFile "install-vscode-extensions.ps1"

# Step 2: Execute the downloaded script
.\install-vscode-extensions.ps1
```

Note that, to get this to work on your Windows PowerShell prompt, you may have to modify some execution policies by running this code:

```
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

and then trying the installation code again.

## Install VSCode Extensions: Manual Installation

Alternatively, instead of using these scripts to install extensions, you can manually install the extensions via the VSCode Extensions 
tab (the video above describes how this can be done). The two extensions you'll need are: [VS Code Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare); 
[R Editor Support for VSCode](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)

## Login to GitHub

Once these two extensions are successfully installed, there is one last step you'll need to do, which is to sign into your GitHub account 
from within VSCode. To do this, click the "Account" icon in VSCode, and you'll be prompted to enter your GitHub username and 
password. You will, of course, need a [GitHub account](https://github.com/) to do this.

Once these steps are complete, we can collaborate on writing R code together.

[^1]: This repo was inspired by https://is.gd/6mtdvD

<!-- [^2]: Alternatively, if you are using MacOS, you can use the code in this repository to automate the process. To start, open Terminal
or your Terminal emulator, such as iTerm2. Then, if you have not already, install [HomeBrew](https://brew.sh/) by running the following:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Once HomeBrew successfully installs, you can run the following code to install VSCode:
```
brew install --cask visual-studio-code
```
Note that you can get to this point without HomeBrew by simply installing VScode with the "download and install" link above. -->