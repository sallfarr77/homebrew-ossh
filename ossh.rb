class Ossh < Formula
  include Language::Python::Virtualenv

  desc "Professional SSH Connection Manager"
  homepage "https://github.com/sallfarr77/ossh"
  url "https://github.com/sallfarr77/ossh/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "f7a49ed48d565126e1269b7e2f8680288ab86ca3e6219b6ae795fc0a2effb8e9"  
  license "MIT"

  depends_on "python@3.11"

  resource "rich" do
    url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eeaab2c2bc/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  def install
    virtualenv_create(libexec, "python3.11")
    virtualenv_install_with_resources
  end

  test do
    system bin/"ossh", "--help"
  end
end