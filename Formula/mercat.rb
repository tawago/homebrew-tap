class Mercat < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mercat"
  version "0.3.4"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-aarch64.tar.gz"
      sha256 "5bb857624bb1363a5a6af349fc9fb4660dd9a39797c7be1739a45578a71f0495"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-x86_64.tar.gz"
      sha256 "1e09097291ccad6f611e3ca342808f2efe03708a9653b69aa53a9898e008f888"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-aarch64.tar.gz"
      sha256 "22d0175221d87faf4f4ad7569f48ec51fea2c4075e07a23eb7f58cca32801870"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-x86_64.tar.gz"
      sha256 "7633b3dd57b8687bf004d31ed807aa03054f789583c6e210116204c2c2a68941"
    end
  end

  def install
    bin.install "mercat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mercat --version")
  end
end
