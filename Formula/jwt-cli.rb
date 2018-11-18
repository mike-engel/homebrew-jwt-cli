class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/2.2.0/jwt-cli-2.2.0-macOS.tar.gz"
  version "2.2.0"
  sha256 "51eb870b4a423b51f9d22b8e5237bdd2ec97138bb8ace30f629b828db2eff5c3"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
