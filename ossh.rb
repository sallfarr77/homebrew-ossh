class Ossh < Formula
  include Language::Python::Virtualenv
  
  desc "Professional SSH Connection Manager"
  homepage "https://github.com/sallfarr77/ossh"
  url "https://github.com/sallfarr77/ossh/releases/tag/v1.0.0"
  sha256 "9882e171eb9aa2de604df589d81e6acbce08e5703eb9d1f3bb7237f975728c7f"
  license "MIT"

  depends_on "python@3.11"

  resource "rich" do
    url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eeaab2c2bc/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"ossh", "--help"
  end
end
