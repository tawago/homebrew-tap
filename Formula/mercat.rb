class Mercat < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mercat"
  version "0.3.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-aarch64.tar.gz"
      sha256 "7ae7c07916fd64ec28825928ff771d6e1a62dde6c43f82ef7c76a6435247c24f"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-x86_64.tar.gz"
      sha256 "5c50ceb4ff1472fd77a9679c8e4e73d88605b6f716dbbeec3a8173d2e251075b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-aarch64.tar.gz"
      sha256 "6553f384434fa671e49e6ebd969639ad7d46c3acaaca73f75dda690ad2196139"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-x86_64.tar.gz"
      sha256 "037a60c0218074e52841f901fed0f37a940a9cf104ceaa75b78f758c2465fb42"
    end
  end

  def install
    bin.install "mercat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mercat --version")
  end
end
