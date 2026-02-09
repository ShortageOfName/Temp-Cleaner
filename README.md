# Temp-Cleaner

![Windows](https://img.shields.io/badge/OS-Windows-blue?logo=windows&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)
![Version](https://img.shields.io/badge/version-1.5.0-orange)

**Temp-Cleaner** is a lightweight, safe Windows batch script that frees up disk space and improves performance by removing temporary files, caches, logs, and other unnecessary data.

---

## Features

- **Quick Cleanup** (fast daily cleanup)
  - User TEMP folders (`%TEMP%`, `%LocalAppData%\Temp`, `LocalLow\Temp`)
  - Windows TEMP (`C:\Windows\Temp`)
  - Crash/memory dumps
  - PowerShell history and Windows caches
  - Windows Update download cache
  - Prefetch files
  - Thumbnail cache
  - Browser caches (Edge and Chrome)
  - Recycle Bin
  - Windows logs and Defender logs
  - DNS cache flush and IP renewal
  - Explorer restart for thumbnail changes

- **Auto Disk Cleanup** runs pre-configured `cleanmgr /sagerun:50` silently
- Automatic admin elevation
- Colorful interactive menu with progress indicators
- One-time setup instructions for silent Disk Cleanup
- Safe, only targets known temporary and cache locations

---

## Usage

1. Double-click `TempCleaner.bat`
2. Allow Administrator rights
3. Choose an option from the menu:

   | Option | Action |
   |--------|--------|
   | 1      | Quick Cleanup |
   | 2      | Auto Disk Cleanup |
   | 3      | Setup Instructions for option 2 |
   | 4      | About Developer |
   | 99     | Exit |

**Note:** First-time users should run option 3 once to configure the Disk Cleanup preset. Afterwards, option 2 will run silently and clean more thoroughly.

---

## When to Use

- Monthly maintenance
- After Windows updates
- Low disk space on C
- Sluggish system performance

---

## License

This project is licensed under the [MIT License](LICENSE).

---

Made by **Prashant Thakur**  
GitHub: [https://github.com/prashant64bit](https://github.com/prashant64bit)  
Portfolio: [https://PrashantThakur.is-a.dev](https://PrashantThakur.is-a.dev)  
LinkedIn: [https://linkedin.com/in/prashant64bit](https://linkedin.com/in/prashant64bit)
