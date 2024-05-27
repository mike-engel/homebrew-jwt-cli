class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/6.0.0/jwt-macOS.tar.gz"
  version "6.0.0"
  sha256 "bd29e7656578d76018bff770a96556ecd3e47f4c572f3c5ace88abac8e1ceaa7"
  head "https://github.com/mike-engel/jwt-cli.git"

  on_linux do
    url "https://github.com/mike-engel/jwt-cli/releases/download/6.0.0/jwt-linux.tar.gz"
    sha256 "9d6f24862348ade49d3f3592d0aca21bebec1fac221dd3cdae16058f84b54a52"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
