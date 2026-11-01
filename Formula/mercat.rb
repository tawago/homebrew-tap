class Mercat < Formula
  desc "Fast terminal markdown viewer with Mermaid diagram support"
  homepage "https://github.com/tawago/mercat"
  version "0.3.7"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-aarch64.tar.gz"
      sha256 "cb7dd0dffa89cb416d3fefc77165009819bd4c277a1ef88ac8d51ea9f6e6b6d1"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-darwin-x86_64.tar.gz"
      sha256 "5c839d8c2f3975dfef7011fdd6a1f5d7b9b76bbd1cca81eace32ab02134f6437"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-aarch64.tar.gz"
      sha256 "fde0118f395ebaae8cdb689b85f88a635dea86a0cfffefce6044e7a3ac9c8a34"
    end

    on_intel do
      url "https://github.com/tawago/mercat/releases/download/v#{version}/mercat-linux-x86_64.tar.gz"
      sha256 "f891f00115a3fb12c4676ce172ba1663e25f7dba74ff70e3a61863b18f751246"
    end
  end

  def install
    bin.install "mercat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mercat --version")
  end
end
