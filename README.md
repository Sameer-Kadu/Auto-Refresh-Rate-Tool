Auto Refresh Rate Tool - User Guide
Overview
This tool automatically monitors and switches the display refresh rate on your Windows PC. It runs as a background application and ensures your refresh rate is set as desired.

Files in this folder
AutRefRate.exe - The main executable program.

install_AutRefRate.bat - Installation script that sets up the program for easy command-line access.

Installation Instructions
Right-click on install_AutRefRate.bat and select Run as Administrator.

This script will:

Copy the program to C:\Program Files\AutoRefreshRate\

Add this folder to your user PATH environment variable

Create a shortcut on your Desktop for easy access

Once installation completes, open a new Command Prompt window.

How to run the program
Open Command Prompt and type:

text
AutRefRate
The program will start running in the background and log activity in C:\RefreshRateAppLog.txt.

You can double-click the desktop shortcut to launch it as well.

Notes
The installation requires Administrator permissions to copy files and modify PATH.

You must open a new Command Prompt window after installation to recognize the updated PATH.

To stop the running program, use Task Manager or close its window if visible.

Troubleshooting
If AutRefRate command is not recognized:

Verify you ran the batch file as Administrator.

Open a new Command Prompt window.

Make sure the folder C:\Program Files\AutoRefreshRate exists and contains AutRefRate.exe.

Check activity log file at C:\RefreshRateAppLog.txt for details.
