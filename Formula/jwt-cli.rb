class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/4.0.0/jwt-macOS.tar.gz"
  version "4.0.0"
  sha256 "a58929cba03d3639b29281508b638f7da3317a86ef1f6da9290107a7f97ae157"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
