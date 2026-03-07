class Sprintfoundry < Formula
  desc "Multi-agent orchestration for AI-powered software development"
  homepage "https://github.com/Sagart-cactus/SprintFoundry"
  url "https://registry.npmjs.org/sprintfoundry/-/sprintfoundry-0.6.0.tgz"
  sha256 "64590bc6503fbad3f44c39f465ffecc6de749fef4c09a62ebaf817d0cf758560"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/sprintfoundry"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/sprintfoundry --version")
  end
end
