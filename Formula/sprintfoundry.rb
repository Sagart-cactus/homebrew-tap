class Sprintfoundry < Formula
  desc "Multi-agent orchestration for AI-powered software development"
  homepage "https://github.com/Sagart-cactus/SprintFoundry"
  url "https://registry.npmjs.org/sprintfoundry/-/sprintfoundry-0.2.0.tgz"
  sha256 "e1553cf5785514341ff5e4dbf0491f6a7ef21b6b07ab87e5ecd42c429fdbd0f7"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/sprintfoundry"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/sprintfoundry --version")
  end
end
