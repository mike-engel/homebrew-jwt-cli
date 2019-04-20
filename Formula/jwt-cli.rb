class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/2.4.0/jwt-cli-2.4.0-macOS.tar.gz"
  version "2.4.0"
  sha256 "b1bcda5c5b900f1c60bd604e5acfbbfd663c34c531efb8ecd2f0d3881285563f"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
