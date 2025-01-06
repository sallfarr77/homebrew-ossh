class Ossh < Formula
  include Language::Python::Virtualenv
  
  desc "Professional SSH Connection Manager"
  homepage "https://github.com/sallfarr77/ossh"
  url "https://github.com/sallfarr77/ossh/releases/tag/v1.0.0"
  sha256 "9882e171eb9aa2de604df589d81e6acbce08e5703eb9d1f3bb7237f975728c7f"
  license "MIT"

  depends_on "python@3.11"

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.7.0.tar.gz"
    sha256 "9882e171eb9aa2de604df589d81e6acbce08e5703eb9d1f3bb7237f975728c7f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"ossh", "--help"
  end
end
