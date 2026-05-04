class Hashsmith < Formula
  desc "Swiss Army knife for encoding, hashing, and cracking"
  homepage "https://github.com/s4l1hs/Hashsmith"
  url "https://github.com/s4l1hs/Hashsmith/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "4d4dce7265d74cdad4c13109ab34847de9626a59a41fe8478b30ba6ce081b3cb"
  license "MIT"

  depends_on "go" => :build

  def install
    cd "hashsmith/go_hashsmith" do
      system "go", "build",
             "-ldflags", "-s -w",
             "-o", bin/"hashsmith",
             "./cmd/hashsmith"
    end
  end

  test do
    assert_match "Hashsmith", shell_output("#{bin}/hashsmith --help 2>&1")
  end
end
