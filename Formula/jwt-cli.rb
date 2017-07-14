class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/1.0.0/jwt-cli-1.0.0-macOS.tar.gz"
  version "1.0.0"
  sha256 "8e37f90f901fb7b35c9423c8169498d65bce61e87a83c1b546e572d36a798aaa"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
