# GhostLock (Official Homebrew Tap)

**GhostLock** keeps your MacBook or Windows PC awake at 100% speed for background LLMs (`Ollama`, `Claude Code`, `Cursor`, `Browser-Use`) while locking your screen behind a **Liquid Glass**, **Frosted Backdrop**, or **Stealth OS Update Decoy** overlay.

## Install on macOS via Homebrew (One Command)

```bash
brew update
brew install Bhavya-gupta127/ghostlock/ghostlock
```

## Quick Start

```bash
# Launch Fullscreen Kiosk Shield + Caffeinate Keep-Awake
ghostlock

# Stop background daemon
ghostlock stop
```

## Key Features
- **6 Lock & Stealth Decoy Modes**: Liquid Glass, Backdrop Frosted, Pitch Dark OLED, macOS Update Decoy, Windows Update Decoy, and Neural Terminal Decoy.
- **Blind Keyboard Unlock on Decoys**: Zero password boxes shown on Decoy screens—simply type your password directly on the keyboard and press `Enter`.
- **Zero-Prompt Silent Intruder Webcam Capture**: Automatically snaps a timestamped photo on failed password attempts in Kiosk mode.
- **Enterprise Endpoint Compatible**: Uses only signed system binaries (`/usr/bin/caffeinate`, Homebrew `node`, and `Google Chrome`) with zero unsigned Mach-O binaries or kernel extensions.
