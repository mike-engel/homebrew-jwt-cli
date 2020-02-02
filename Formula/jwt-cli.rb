class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/2.5.2/jwt-cli-2.5.2-macOS.tar.gz"
  version "2.5.2"
  sha256 "d55b408ce84f7b98f0f0f1d8514540ba5be5c9821cad8b6dc7c389f001b94207"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
