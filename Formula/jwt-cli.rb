class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/2.2.1/jwt-cli-2.2.1-macOS.tar.gz"
  version "2.2.1"
  sha256 "e60bfeba395d89873cf6cbc2d8728f2b3364108a6e08f20d90d4f77bae0ef0a7"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
