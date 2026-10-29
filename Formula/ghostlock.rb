class Ghostlock < Formula
  desc "Zero-sleep screen lock, Liquid Glass shield & stealth decoy overlay for background AI/LLM runs"
  homepage "https://github.com/Bhavya-gupta127/homebrew-ghostlock"
  url "https://raw.githubusercontent.com/Bhavya-gupta127/homebrew-ghostlock/main/releases/ghostlock-v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "f1ddb024d983791fee4f999504cb690cadaf4b9e6704b000868bd7375fd653dc"

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
