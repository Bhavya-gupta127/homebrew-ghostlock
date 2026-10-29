class Ghostlock < Formula
  desc "Zero-sleep screen lock, Liquid Glass shield & stealth decoy overlay for background AI/LLM runs"
  homepage "https://github.com/Bhavya-gupta127/homebrew-ghostlock"
  url "https://raw.githubusercontent.com/Bhavya-gupta127/homebrew-ghostlock/main/releases/ghostlock-v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "3a4e828051f071c7a7f51eea1a3d79ef2414bf7b770cf58afed8362195080e9f"

  def install
    libexec.install Dir["*"]
    chmod 0755, "#{libexec}/bin/ghostlock"
    bin.install_symlink "#{libexec}/bin/ghostlock"
  end

  def caveats
    <<~EOS
      GhostLock v1.0.0 is installed!

      1. Start GhostLock Fullscreen Kiosk Shield:
           ghostlock

      2. Stop the background daemon anytime:
           ghostlock stop
    EOS
  end
end
