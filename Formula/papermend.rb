class Papermend < Formula
  desc "Minimal CLI-only PaperCut Print Deploy client"
  homepage "https://github.com/lancylot2004/papermend"
  url "https://github.com/lancylot2004/papermend/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "03c009099f9a2d296142e8b2883dd4dd6243633a07231956dbd5f0c5e64af7d4"
  license "MIT"

  depends_on "rust" => :build

  deny_network_access!

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/papermend --version")
  end
end
