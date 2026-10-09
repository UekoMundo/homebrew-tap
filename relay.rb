# No verified binary release yet. Updated by update-distribution-tap.mjs.
class Relay < Formula
  desc "Named localhost reverse proxy for development servers"
  homepage "https://github.com/UekoMundo/homebrew-tap/releases"
  url "https://github.com/UekoMundo/homebrew-tap.git", using: :git
  version "0.0.0"
  license "MIT"

  disable! date: "2026-09-03", because: "has no verified binary release in UekoMundo/homebrew-tap"

  def install
    odie "Publish a verified Kenkon release before enabling this formula."
  end
end
