class Hashsmith < Formula
  include Language::Python::Virtualenv

  desc "Swiss Army knife for encoding, hashing, and cracking"
  homepage "https://github.com/s4l1hs/Hashsmith"
  url "https://github.com/s4l1hs/Hashsmith/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"

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