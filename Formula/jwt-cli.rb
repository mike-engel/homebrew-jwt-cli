class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/2.1.0/jwt-cli-2.1.0-macOS.tar.gz"
  version "2.1.0"
  sha256 "8b46dfb20590969677eaec8c4dcf9fc72b0b365108e21cb59b9939a32636a17a"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
