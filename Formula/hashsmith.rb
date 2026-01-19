class Hashsmith < Formula
  include Language::Python::Virtualenv

  desc "Swiss Army knife for encoding, hashing, and cracking"
  homepage "https://github.com/s4l1hs/hashsmith"
  url "https://github.com/s4l1hs/hashsmith/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/hashsmith", "--help"
  end
end