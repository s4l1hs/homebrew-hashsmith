class Hashsmith < Formula
  include Language::Python::Virtualenv

  desc "Swiss Army knife for encoding, hashing, and cracking"
  homepage "https://github.com/s4l1hs/Hashsmith"
  url "https://github.com/s4l1hs/Hashsmith/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "85cf3faa928319ec043ecdea0925eb7a5973b1794d47ca5ee06dc9f7b4d36c58"

  depends_on "python@3.10"

  def install
    virtualenv_create(libexec, "python3.10")
    system libexec/"bin/pip", "install", "-v", "--ignore-installed", buildpath
    bin.install_symlink libexec/"bin/hashsmith"
  end

  test do
    system "#{bin}/hashsmith", "--help"
  end
end