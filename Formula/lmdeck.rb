class Lmdeck < Formula
  desc "Run local LLM recipes: quant, engine, hardware, and multi-node"
  homepage "https://github.com/javierbits/lmdeck"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/javierbits/lmdeck/releases/download/v0.1.5/lmdeck-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "a4ec6783f3a0e64b6149355afdb73e86f317febdb8ef733e44304ac108c2e10d"
    end
    on_intel do
      url "https://github.com/javierbits/lmdeck/releases/download/v0.1.5/lmdeck-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "b96ce83ac87d4227b7cd9abeddee6df67d5322deaaaa69f63f86e9e734f6fb94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/javierbits/lmdeck/releases/download/v0.1.5/lmdeck-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bafe074296b3554a9940d3a399070e47ed64c58a99cbdbe0869ace008a3ff346"
    end
    on_intel do
      url "https://github.com/javierbits/lmdeck/releases/download/v0.1.5/lmdeck-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18a08425337d081c63f634ec6306f3e0360db3665e19b4653a6fc6c891c5c196"
    end
  end

  def install
    bin.install "lmdeck"
  end

  test do
    assert_match "lmdeck 0.1.5", shell_output("#{bin}/lmdeck --version")
  end
end
