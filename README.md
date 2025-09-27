# Auto Refresh Rate Tool

A lightweight Windows utility that automatically monitors and switches the display refresh rate on your PC.  
The tool runs in the background and ensures your refresh rate is set as desired, with logging support for troubleshooting.

---

## 📂 Files Included

- **AdeptiveRefreshRate.exe** — The main executable program.  
- **install_AutRefRate.bat** — Installation script that sets up the program for easy access from the command line.

---

## ⚙️ Installation

1. **Right-click** on `install_AutRefRate.bat` and select **Run as Administrator**.  
   This script will:
   - Copy the program to `C:\Program Files\AutoRefreshRate\`
   - Add this folder to your user `PATH` environment variable
   - Create a shortcut on your Desktop for quick access

2. Once installation completes, **open a new Command Prompt window** to recognize the updated PATH.

---

## ▶️ Usage

Logs activity to: C:\RefreshRateAppLog.txt

### 1. Desktop Shortcut
Double-click the Auto Refresh Rate Tool shortcut created on your Desktop.

🛑 Stopping the Program
Open Task Manager and end the AutRefRate.exe process

Or close the program window (if visible)

📝 Notes
Installation requires Administrator permissions to copy files and modify PATH.

You must open a new Command Prompt after installation to recognize the updated PATH.

🔧 Troubleshooting
If AutRefRate command is not recognized:

Verify you ran the batch file as Administrator

Open a new Command Prompt window

Ensure the folder C:\Program Files\AutoRefreshRate exists and contains AutRefRate.exe

Check the activity log: C:\RefreshRateAppLog.txt
