# VSCode Setup for MacOS

[A Windows version of this repo is coming soon]

This repo contains some basic setup instructions and commands for installing Visual Studio Code and select extensions on MacOS. 

One benefit of using VSCode is the availability of the [LiveShare](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) extension, which allows two or more people to edit the 
same codefile remotely. To learn more about LiveShare, see [this video](https://youtu.be/A2ceblXTBBc).

I like to collaborate with students and colleagues using R by working on the same .R or .Rmd file simultaneously, possibly 
from different locations.

This repo contains some basic instructions and commands to get your computer into a state where we can work together.

To get this to work, you'll need to have R already installed on your computer, and you need to ensure that you are using 
R version 3.4.0 or later. The first thing you'll need to do is to install some packages in R. To do this, open R as 
you typically would, and install the following:

```
install.packages("languageserver")
install.packages("httpgd")
```

Then, the following tasks need to be carried out:

1) Install VSCode
2) Install necessary VSCode Extensions, including:
    - LiveShare
    - R

There are at least two ways to carry out these tasks. First, you can do everything manually. This would require that you
[download and install VSCode](https://code.visualstudio.com/), open it up, and then install the LiveShare and R extensions
from within your newly installed VSCode. Note this process will work on MacOS and Windows systems.

Alternatively, if you are using MacOS, you can use the code in this repository to automate the process. To start, open Terminal
or your Terminal emulator, such as iTerm2. Then, if you have not already,  install [HomeBrew](https://brew.sh/) by running the following:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Once HomeBrew successfully installs, you can run the following code to install VSCode:

```
brew cask install visual-studio-code
```

Once VSCode successfully installs via HomeBrew, you can run the following to install the extensions we'll need:

```
curl -s https://raw.githubusercontent.com/ainaimi/vscode-setup-macos/main/install-func.sh | /bin/bash
```

