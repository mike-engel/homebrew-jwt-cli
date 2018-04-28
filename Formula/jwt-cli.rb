class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/2.0.0/jwt-cli-2.0.0-macOS.tar.gz"
  version "2.0.0"
  sha256 "da35e2fab9ed9efa2b04d238a65770cd832b91ad917e8cf1be2a50ae469a2369"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
