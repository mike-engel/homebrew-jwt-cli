class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  license "MIT"
  version "6.1.1"

  head "https://github.com/mike-engel/jwt-cli.git"

  on_macos do
    url "https://github.com/mike-engel/jwt-cli/releases/download/#{version}/jwt-macOS.tar.gz"
    sha256 "e86014e4c6c7dd215e41584cfb362cdedb1e03fd9f557eaf905571b86afaa9cc"
  end

  on_linux do
    url "https://github.com/mike-engel/jwt-cli/releases/download/#{version}/jwt-linux.tar.gz"
    sha256 "045c6e6a9f2786ac7e6c9debb4c3d35df3da33e39504b2be1505a4523c483d70"
  end

  def install
    libexec.install Dir["*"]

    bin.install_symlink "#{libexec}/jwt" => "jwt"

   # Install shell completions
    generate_completions_from_executable(bin/"jwt",
      "completion", base_name: "jwt")
  end

  test do
    system bin/"jwt", "encode", "-S", "secret"
  end
end
