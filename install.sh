#!/usr/bin/env bash
# ============================================================================
# GhostLock Direct macOS Installer (Zero Ruby / Enterprise Endpoint Friendly)
# Uses only Apple-signed /usr/bin/curl and /usr/bin/tar when corporate
# endpoint tools (like Veltar) block Homebrew's Ruby 4.0.0 C extensions.
# ============================================================================
set -euo pipefail

INSTALL_ROOT="${HOME}/.ghostlock-app"
TARBALL_URL="https://raw.githubusercontent.com/Bhavya-gupta127/homebrew-ghostlock/main/releases/ghostlock-v1.0.0.tar.gz"

echo "🔒 Downloading GhostLock v1.0.0..."
rm -rf "${INSTALL_ROOT}"
mkdir -p "${INSTALL_ROOT}"

/usr/bin/curl -fsSL "${TARBALL_URL}" | /usr/bin/tar -xz -C "${INSTALL_ROOT}" --strip-components=1
chmod +x "${INSTALL_ROOT}/bin/ghostlock"

# Symlink into /opt/homebrew/bin or /usr/local/bin or ~/.local/bin
if [ -d "/opt/homebrew/bin" ] && [ -w "/opt/homebrew/bin" ]; then
  ln -sf "${INSTALL_ROOT}/bin/ghostlock" "/opt/homebrew/bin/ghostlock"
  BIN_DEST="/opt/homebrew/bin/ghostlock"
elif [ -d "/usr/local/bin" ] && [ -w "/usr/local/bin" ]; then
  ln -sf "${INSTALL_ROOT}/bin/ghostlock" "/usr/local/bin/ghostlock"
  BIN_DEST="/usr/local/bin/ghostlock"
else
  mkdir -p "${HOME}/.local/bin"
  ln -sf "${INSTALL_ROOT}/bin/ghostlock" "${HOME}/.local/bin/ghostlock"
  BIN_DEST="${HOME}/.local/bin/ghostlock"
fi

  echo "✅ GhostLock v1.0.0 installed to ${BIN_DEST}"
  echo "🚀 Run 'ghostlock' in your terminal to start, or 'ghostlock lock' (⌘+⇧+L) to lock anytime!"
