class Sprintfoundry < Formula
  desc "Multi-agent orchestration for AI-powered software development"
  homepage "https://github.com/Sagart-cactus/SprintFoundry"
  url "https://github.com/Sagart-cactus/SprintFoundry/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "bb0682ec6e5dd52658c4f4a5c58a1b9c9e4569dc3b2549b73efce1cf6163f04c"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    cd libexec do
      system "npm", "ci", "--omit=dev", "--ignore-scripts"
      system "npm", "run", "build"
    end
    (bin/"sprintfoundry").write_env_script libexec/"dist/index.js",
      PATH: "#{Formula["node"].opt_bin}:$PATH"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/sprintfoundry --version")
  end
end
