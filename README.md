# 🍺 brew-backup-daily

Simple Bash script to back up your Homebrew setup automatically — every day.  
It saves all installed **formulae** and **casks** as a dated `Brewfile`,  
and logs each backup run for easy tracking.

---

## 🚀 Quick Start

Clone the repo and run the script:

```bash
chmod +x backup.sh
./backup.sh
```

Backups and logs will be created under your home directory:

```
~/brew-backup-daily/
├── brewfiles/
│   ├── Brewfile-2025-10-18
│   └── Brewfile-2025-10-19
└── logs/
    ├── backup-2025-10-18.log
    └── backup-2025-10-19.log
```

---

## ⚙️ Features

- 📦 Backs up all installed **formulae** and **casks**
- 🗓️ Creates date-based `Brewfile` snapshots
- 🧾 Saves logs automatically under `~/brew-backup-daily/logs`
- 💨 Simple one-line restore (using `brew bundle`)

---

## 💡 Restore Example

To restore everything on a new Mac:

```bash
brew bundle --file ~/brew-backup-daily/brewfiles/Brewfile-YYYY-MM-DD
```

Replace the date with the file you want to restore from.

---

## 🧹 Recommended .gitignore

You probably don’t want to commit generated files:

```
brewfiles/
logs/
```

---

## 🧠 Notes

- Works on macOS with [Homebrew](https://brew.sh)
- You can schedule it with `launchd` or any cron job
- Combine it with Google Drive, iCloud, or Dropbox for offsite backup

---

## 🧑‍💻 Author

Created by **JinHyuk** 🐾  
> Machines are learning — are you?
