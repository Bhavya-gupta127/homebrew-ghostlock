class Ghostlock < Formula
  desc "Zero-sleep screen lock, Liquid Glass shield & stealth decoy overlay for background AI/LLM runs"
  homepage "https://github.com/Bhavya-gupta127/homebrew-ghostlock"
  url "https://github.com/Bhavya-gupta127/homebrew-ghostlock/releases/download/v1.0.0/ghostlock-v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "156e884d44e5ddc79ab99ca7df71f6665e5feca38fa8073d7460f23711b2dd79"
  license :cannot_represent

  depends_on "node"

  def install
    libexec.install Dir["*"]

    # Compile native macOS AppKit Kiosk helper locally so corporate/MDM Macs never show Gatekeeper quarantine popups
    if OS.mac? && which("swiftc")
      system "bash", "#{libexec}/macos/build-macos.sh"
    end

    chmod 0755, "#{libexec}/bin/ghostlock"
    bin.install_symlink "#{libexec}/bin/ghostlock"
  end

  def caveats
    <<~EOS
      GhostLock v1.0.0 is installed!

      1. Start GhostLock Fullscreen Kiosk Shield (keeps Mac awake via caffeinate):
           ghostlock

      2. Launch Native macOS AppKit Hardware Shield (blocks Cmd+Tab & Force Quit):
           ghostlock native --theme liquid-glass --pin 1234

      3. Stop the background daemon anytime:
           ghostlock stop
    EOS
  end

  test do
    assert_match "ghostlock #{version}", shell_output("#{bin}/ghostlock --version")
  end
end
