class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/3.2.0/jwt-cli-3.2.0-macOS.tar.gz"
  version "3.2.0"
  sha256 "77642cae7ba08e026e9c0aae9fb6ecb9cf4cd9ad61d4caa6c00ed79bb332d5fe"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
