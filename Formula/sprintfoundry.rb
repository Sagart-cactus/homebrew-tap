class Sprintfoundry < Formula
  desc "Multi-agent orchestration for AI-powered software development"
  homepage "https://github.com/Sagart-cactus/sprintfoundry"
  url "https://registry.npmjs.org/sprintfoundry/-/sprintfoundry-0.1.0.tgz"
  sha256 "CHECKSUM_AFTER_PUBLISH"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/sprintfoundry"
  end

  test do
    assert_match "sprintfoundry", shell_output("#{bin}/sprintfoundry --version")
  end
end
