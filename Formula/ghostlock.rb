class Ghostlock < Formula
  desc "Zero-sleep screen lock, Liquid Glass shield & stealth decoy overlay for background AI/LLM runs"
  homepage "https://github.com/Bhavya-gupta127/homebrew-ghostlock"
  url "https://raw.githubusercontent.com/Bhavya-gupta127/homebrew-ghostlock/main/releases/ghostlock-v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "17eaa57d3c60710e84ac5b278bf9b8f33713b3182d8d055ae53c5790e9c6a397"
  license :cannot_represent

  depends_on "node"

  def install
    libexec.install Dir["*"]
    chmod 0755, "#{libexec}/bin/ghostlock"
    bin.install_symlink "#{libexec}/bin/ghostlock"
  end

  def caveats
    <<~EOS
      GhostLock v1.0.0 is installed!

      1. Start GhostLock Fullscreen Kiosk Shield (uses built-in Apple caffeinate + Chrome Kiosk):
           ghostlock

      2. Stop the background daemon anytime:
           ghostlock stop
    EOS
  end

  test do
    assert_match "ghostlock #{version}", shell_output("#{bin}/ghostlock --version")
  end
end
