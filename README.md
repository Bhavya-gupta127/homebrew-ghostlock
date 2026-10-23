# 🔒 GhostLock — Official Download & Homebrew Tap

**GhostLock** keeps your MacBook or Windows PC awake at 100% speed for background LLMs (`Ollama`, `Claude Code`, `Cursor`, `Antigravity`) while locking your screen behind a **Liquid Glass**, **Frosted Backdrop**, **Obsidian Pitch Dark**, or **Stealth OS Update Decoy** overlay.

---

## 📥 Download & Install (macOS)

### Option 1: Direct One-Line Install (Recommended — Works on Office Macs with Veltar / Endpoint Security)
Uses only Apple-signed `/usr/bin/curl` and `/usr/bin/tar` so corporate endpoint security tools that block Homebrew's Ruby 4.0.0 C extensions won't interfere:

```bash
curl -fsSL https://raw.githubusercontent.com/Bhavya-gupta127/homebrew-ghostlock/main/install.sh | bash
```

### Option 2: Install via Homebrew Cask
```bash
brew install --cask Bhavya-gupta127/ghostlock/ghostlock
```

---

## 🚀 Quick Start & Usage

```bash
# 1. Open GhostLock Control Center & Fullscreen Kiosk Shield
ghostlock

# 2. Instantly lock the screen from anywhere (also bound to Cmd+Shift+L)
ghostlock lock

# 3. Stop the running GhostLock background daemon
ghostlock stop
```

### First-Time Setup
1. Run `ghostlock` to open the Control Center.
2. Set your **Permanent Unlock Password** directly on the **Home Screen** and click **Save Password** (`Lock Screen Now` is disabled until your permanent password is set).
3. *(Optional)* Toggle **📸 Camera Intruder Snapshot** ON if you want webcam snapshots on failed unlock attempts (OFF by default).
4. Click **🔒 Lock Screen Now** or press **`⌘ + ⇧ + L`** anytime!
