# GhostLock (Official Homebrew Tap)

**GhostLock** keeps your MacBook or Windows PC awake at 100% speed for background LLMs (`Ollama`, `Claude Code`, `Cursor`, `Browser-Use`) while locking your screen behind a **Liquid Glass**, **Frosted Backdrop**, or **Stealth OS Update Decoy** overlay.

## Install on macOS via Homebrew (One Command)

```bash
brew install Bhavya-gupta127/ghostlock/ghostlock
```

*(Or tap first with `brew tap Bhavya-gupta127/ghostlock` and then run `brew install ghostlock`)*

## Quick Start

```bash
# Launch Fullscreen Kiosk Shield + Caffeinate Keep-Awake
ghostlock

# Launch Native macOS AppKit Hardware Shield (Blocks Cmd+Tab & Force Quit)
ghostlock native --theme liquid-glass --pin 1234

# Stop background daemon
ghostlock stop
```

## Key Features
- **6 Lock & Stealth Decoy Modes**: Liquid Glass, Backdrop Frosted, Pitch Dark OLED, macOS Update Decoy, Windows Update Decoy, and Neural Terminal Decoy.
- **Blind Keyboard Unlock on Decoys**: Zero password boxes shown on Decoy screens—simply type your password directly on the keyboard and press `Enter`.
- **Zero-Prompt Silent Intruder Webcam Capture**: Automatically snaps a timestamped photo on failed password attempts in Kiosk mode.
- **Office Mac Friendly**: Compiles the native Swift Kiosk helper locally during `brew install` so corporate MDM / Gatekeeper never blocks execution.
