# Auto Refresh Rate Switcher

A native **Windows background application** built in C++ that monitors and automatically adjusts your display refresh rate.  
It ensures your monitor switches from **144Hz → 60Hz** as needed, making it ideal for users who want a consistent refresh rate across sessions.

---

## 📌 Overview
Many Windows systems, especially laptops, sometimes fail to consistently maintain or switch display refresh rates due to driver caching or system limitations.  

**Auto Refresh Rate Switcher** solves this by:
- Monitoring the current refresh rate in real-time  
- Forcing it to **60Hz** whenever **144Hz** is detected  
- Eliminating flickering, inconsistencies, or the need for manual switching  

---

## ⚡ How It Works
- Runs as a native Windows executable — **no extra runtimes required**  
- Polls the current display refresh rate every **1 second**  
- If detected at **144Hz**, automatically switches to **60Hz** using Windows API calls  
- Logs all activity to `C:\RefreshRateAppLog.txt` for auditing and troubleshooting  

---

## 🛠️ Technologies Used
- **C++** — native Windows performance  
- **Windows API** — `EnumDisplaySettings`, `ChangeDisplaySettings`  
- **Batch scripting** — for installer and PATH setup  
- *(Optional)* DirectX/DXGI APIs — considered for advanced refresh rate detection  

---

## 📥 Installation & Usage

### ✅ Requirements
- Windows **7 or later**  
- **Administrator privileges** (to install and change display settings)  

### 🚀 Quick Install
1. Download the compiled executable and the batch installer script  
2. Run `install_AutRefRate.bat` as **Administrator**  
   - Copies the executable to `C:\Program Files\AutoRefreshRate`  
   - Adds it to your **PATH**  
   - Creates a **Desktop shortcut**  
3. Open a new **Command Prompt** and run:
   ```bash
   AutRefRate
**or simply use the Desktop shortcut.**

📜 Logging
The app writes logs to:

makefile
Copy code
C:\RefreshRateAppLog.txt
Logs include refresh rate checks and changes for troubleshooting or verification.

👨‍💻 Development & Contribution
Developed with Visual Studio and the Windows API

Contributions are welcome via pull requests

Please file issues for bugs, feature requests, or improvement ideas

❓ FAQ
Q: Does this tool require Node.js or Python?
A: No. It’s a native C++ program with zero external dependencies.

Q: Why can’t this run as a Windows Service?
A: Windows services run in isolated sessions that prevent direct interaction with graphical hardware.
This tool runs in user mode for proper access.

Q: How do I uninstall?
A:

Delete C:\Program Files\AutoRefreshRate

Remove the PATH entry manually (Environment Variables)

Delete the Desktop shortcut
