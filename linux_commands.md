# 📘 Essential Linux Commands

This document contains some of the most commonly used Linux terminal commands, organized by category. Great for beginners and system admins.

---

## 📂 File Navigation

| Command | Description |
|--------|-------------|
| `pwd`  | Show current directory path |
| `ls`   | List files in a directory |
| `cd [dir]` | Change to directory `[dir]` |
| `cd ..` | Go up one directory |
| `mkdir [dir]` | Create a new directory |
| `touch [file]` | Create an empty file |

---

## 🛠️ File Management

| Command | Description |
|--------|-------------|
| `cp file1 file2` | Copy `file1` to `file2` |
| `mv file1 file2` | Move or rename a file |
| `rm file` | Delete a file |
| `rm -r dir` | Delete a directory and its contents |
| `cat file` | Display contents of a file |

---

## 🔍 Searching & Filtering

| Command | Description |
|--------|-------------|
| `grep 'text' file` | Search for 'text' in a file |
| `find . -name "*.txt"` | Find all `.txt` files in current and subdirectories |

---

## 🌐 Networking

| Command | Description |
|--------|-------------|
| `ping google.com` | Test network connection |
| `ifconfig` or `ip a` | Show IP address configuration |
| `netstat -tulnp` | Show active network connections |

---

## 🔄 System Updates (Debian/Ubuntu)

```bash
sudo apt update
sudo apt upgrade
