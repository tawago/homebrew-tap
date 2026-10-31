class Mercat < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mercat"
  version "0.3.5"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-aarch64.tar.gz"
      sha256 "f500bd869add98fe56187f1585ad595c448c69c3430d71dee4f5b456442e72dd"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-x86_64.tar.gz"
      sha256 "e584e29ec7840f6711039b3eec24061267f611ccf78c3d3a7dc4b68084a07904"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-aarch64.tar.gz"
      sha256 "d2a6f2df045ea8626e759fdac580ab2eda890de04538bf10984055ee93eec8de"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-x86_64.tar.gz"
      sha256 "3c26198e27fed0d160e444002b2b6ddc191db884af187f4cc601b89f7ad6d452"
    end
  end

  def install
    bin.install "mercat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mercat --version")
  end
end
