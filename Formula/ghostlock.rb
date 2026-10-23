class Ghostlock < Formula
  desc "Zero-sleep screen lock, Liquid Glass shield & stealth decoy overlay for background AI/LLM runs"
  homepage "https://github.com/Bhavya-gupta127/homebrew-ghostlock"
  url "https://raw.githubusercontent.com/Bhavya-gupta127/homebrew-ghostlock/main/releases/ghostlock-v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "b383102e7a47d67cc02da2ad367e0e970122e56d988307de9e34cb6890f8ec61"

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
