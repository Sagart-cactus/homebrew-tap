class Sprintfoundry < Formula
  desc "Multi-agent orchestration for AI-powered software development"
  homepage "https://github.com/Sagart-cactus/SprintFoundry"
  url "https://registry.npmjs.org/sprintfoundry/-/sprintfoundry-0.7.0.tgz"
  sha256 "0bf0718e60eb35a13acb1c741397aa04ef374a9461b36eee3bc55b4e9a925c53"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/sprintfoundry"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/sprintfoundry --version")
  end
end
