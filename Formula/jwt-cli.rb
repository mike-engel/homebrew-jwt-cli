class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/2.5.0/jwt-cli-2.5.0-macOS.tar.gz"
  version "2.5.0"
  sha256 "a3a025027457f9f99682dba1ab1fa3f1c5f088ff9ff10307ec43a656a0ba051f"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
