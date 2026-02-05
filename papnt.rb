class Papnt < Formula
  include Language::Python::Virtualenv

  desc ""
  homepage ""
  url "https://github.com/issakuss/papnt/releases/download/0.4.0/papnt-0.4.0.tar.gz"
  sha256 "e8188dfc9565bccd992b53deb88ca69d3984be0856973971ff28323499d4022f"
  license "Apache-2.0"

  depends_on "python@3.10"
  depends_on "rust"
  depends_on "swig"

  def install
    venv = virtualenv_create(libexec, "python3.10")

    venv.pip_install "pip>=23.2"
    venv.pip_install "setuptools>=68"
    venv.pip_install "wheel>=0.40"

    venv.pip_install "anyio==4.9.0"
    venv.pip_install "arxiv==2.2.0"
    venv.pip_install "beautifulsoup4==4.13.4"
    venv.pip_install "bibtexparser==1.4.3"
    venv.pip_install "certifi==2025.4.26"
    venv.pip_install "cffi==1.17.1"
    venv.pip_install "charset-normalizer==3.4.2"
    venv.pip_install "click==8.1.8"
    venv.pip_install "crossrefapi==1.6.0"
    venv.pip_install "cryptography==42.0.0"
    venv.pip_install "easygui==0.98.3"
    venv.pip_install "exceptiongroup==1.2.2"
    venv.pip_install "feedparser==6.0.11"
    venv.pip_install "google==3.0.0"
    venv.pip_install "grobid-client-python==0.0.9"
    venv.pip_install "h11==0.16.0"
    venv.pip_install "httpcore==1.0.9"
    venv.pip_install "httpx==0.28.1"
    venv.pip_install "idna==3.10"
    venv.pip_install "iso4==0.0.2"
    venv.pip_install "joblib==1.5.0"
    venv.pip_install "lxml==5.4.0"
    venv.pip_install "nltk==3.9.1"
    venv.pip_install "notion-client==2.5.0"
    venv.pip_install "pdf2doi==1.7"
    venv.pip_install "pdfminer-six==20221105"
    venv.pip_install "pdftitle==0.11"
    venv.pip_install "pycparser==2.22"
    system libexec/"bin/pip", "install", "pymupdf==1.25.5", "--only-binary=:all:"
    venv.pip_install "pyparsing==3.2.3"
    venv.pip_install "pypdf==5.4.0"
    venv.pip_install "pypdf2==2.0.0"
    venv.pip_install "pyperclip==1.9.0"
    venv.pip_install "regex==2024.11.6"
    venv.pip_install "requests==2.32.3"
    venv.pip_install "sgmllib3k==1.0.0"
    venv.pip_install "sniffio==1.3.1"
    venv.pip_install "soupsieve==2.7"
    venv.pip_install "tqdm==4.67.1"
    venv.pip_install "typing-extensions==4.13.2"
    venv.pip_install "unidecode==1.4.0"
    venv.pip_install "urllib3==1.26.16"

    venv.pip_install_and_link buildpath
  end

  test do
    system "false"
  end
end
