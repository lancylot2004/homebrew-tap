class Papermend < Formula
  desc "Minimal CLI-only PaperCut Print Deploy client"
  homepage "https://github.com/lancylot2004/papermend"
  url "https://github.com/lancylot2004/papermend/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "048e949e22c6f80af13e5b1aed805ed523350064fc9e352048f96af61461664d"
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
