class JwtCli < Formula
  desc "Super fast CLI tool to decode and encode JWTs built in Rust"
  homepage "https://github.com/mike-engel/jwt-cli"
  license "MIT"
  version "6.2.0"

  head "https://github.com/mike-engel/jwt-cli.git"

  on_macos do
    url "https://github.com/mike-engel/jwt-cli/releases/download/#{version}/jwt-macOS.tar.gz"
    sha256 "c277a113e2fc89d44e70cf38786e7da8b0cbfe59e77e23b37033cc4e2bd8aad6"
  end

  on_linux do
    url "https://github.com/mike-engel/jwt-cli/releases/download/#{version}/jwt-linux.tar.gz"
    sha256 "a7bdea2f9f53495e94bdd34048d2cb6cee2137220cf1818f8510f569ad5c7171"
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
