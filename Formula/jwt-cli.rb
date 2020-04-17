class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  url "https://github.com/mike-engel/jwt-cli/releases/download/3.1.0/jwt-cli-3.1.0-macOS.tar.gz"
  version "3.1.0"
  sha256 "221fb0d59aadfff8fbfc715a168adb9b76f98ff7f34a052f04a34e52c5661619"
  head "https://github.com/mike-engel/jwt-cli.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/jwt" => "jwt"
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
