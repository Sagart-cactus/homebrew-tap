class Sprintfoundry < Formula
  desc "Multi-agent orchestration for AI-powered software development"
  homepage "https://github.com/Sagart-cactus/SprintFoundry"
  url "https://github.com/Sagart-cactus/SprintFoundry/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "0327839ac0047cbeb2f75b2b1dbb20e0c1acd305044625ed0b5bab4f27559efd"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install"
    system "npm", "run", "build"
    system "npm", "prune", "--omit=dev"
    libexec.install "dist", "monitor", "config", "src", "plugins", "node_modules", "package.json"
    (bin/"sprintfoundry").write_env_script libexec/"dist/index.js", {}
    chmod 0755, libexec/"dist/index.js"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/sprintfoundry --version")
  end
end
