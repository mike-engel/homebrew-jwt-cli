class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/2.5.1/jwt-cli-2.5.1-macOS.tar.gz"
  version "2.5.1"
  sha256 "eb04bdf4d61506b7736d2cbbf48ab12a84813d999992ec88315d6fb616b059af"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
