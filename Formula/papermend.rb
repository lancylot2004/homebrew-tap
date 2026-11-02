class Papermend < Formula
  desc "Minimal CLI-only PaperCut Print Deploy client"
  homepage "https://github.com/lancylot2004/papermend"
  url "https://github.com/lancylot2004/papermend/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "427255f9ef64ec814cb3391b5c7ef69ae58ea2f031f46f95c75181827d9d6546"
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
