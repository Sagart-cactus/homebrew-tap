class Sprintfoundry < Formula
  desc "Multi-agent orchestration for AI-powered software development"
  homepage "https://github.com/Sagart-cactus/SprintFoundry"
  url "https://registry.npmjs.org/sprintfoundry/-/sprintfoundry-0.5.0.tgz"
  sha256 "69601d51871c12e0370b76fe49a644d40b0593c420624da17d606c08f0df3039"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/sprintfoundry"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/sprintfoundry --version")
  end
end
