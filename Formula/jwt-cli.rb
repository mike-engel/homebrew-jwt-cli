class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/6.1.0/jwt-macOS.tar.gz"
  version "6.1.0"
  sha256 "7937cabf6594d8496519b928c8b1324998efd5b1f4a54951106f8ca4a910eb18"
  head "https://github.com/mike-engel/jwt-cli.git"

  on_linux do
    url "https://github.com/mike-engel/jwt-cli/releases/download/6.1.0/jwt-linux.tar.gz"
    sha256 "0ba4c2f9b454cf378ccd5372a86d2ed2f9426451aa11977cf65d18443eb42e44"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
