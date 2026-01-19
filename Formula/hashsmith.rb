class Hashsmith < Formula
  include Language::Python::Virtualenv

  desc "Swiss Army knife for encoding, hashing, and cracking"
  homepage "https://github.com/s4l1hs/Hashsmith"
  url "https://github.com/s4l1hs/Hashsmith/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "fd820b6758b0b97465b42d3dcb1556f6e0e16f82aa7ca06d9732781e790e3d50"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/hashsmith", "--help"
  end
end