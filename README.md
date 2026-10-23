# GhostLock (Official Homebrew Tap)

**GhostLock** keeps your MacBook or Windows PC awake at 100% speed for background LLMs (`Ollama`, `Claude Code`, `Cursor`, `Browser-Use`) while locking your screen behind a **Liquid Glass**, **Frosted Backdrop**, or **Stealth OS Update Decoy** overlay.

## Option 1: Install via Homebrew Cask / Formula

```bash
brew install --cask Bhavya-gupta127/ghostlock/ghostlock
```

## Option 2: Direct Install (For Office Macs where Veltar blocks Homebrew's Ruby 4.0.0 extensions)

```bash
curl -fsSL https://raw.githubusercontent.com/Bhavya-gupta127/homebrew-ghostlock/main/install.sh | bash
```

## Quick Start

```bash
# Launch Fullscreen Kiosk Shield + Caffeinate Keep-Awake
ghostlock

# Stop background daemon
ghostlock stop
```
