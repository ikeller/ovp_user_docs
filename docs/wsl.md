# Windows Subsystem for Linux (WSL)

Several steps in the data upload process are executed from the command line. For Windows users, the simplest approach is to install Windows Subsystem for Linux (WSL), which provides access to an Ubuntu terminal.

## Install WSL

The full documentation is available
[here](https://learn.microsoft.com/en-us/windows/wsl/install). In short:

1.  Open PowerShell in Administrator mode: find PowerShell via Windows Start menu, right-click and select "Run as administrator"

2.  In PowerShell, enter the following command: `wsl --install`

3.  Restart computer

## Open Ubuntu terminal

Go to Windows Start menu and type "Ubuntu". This will open Ubuntu in its own console window.

## Basic commands

-   You can use the command `cd <path>` to navigate to any location on your computer. For example, you can navigate to your C: drive as `cd /mnt/c`

-   To list the content of your current working directory, type `ls`.
