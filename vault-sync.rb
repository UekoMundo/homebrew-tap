# No verified binary release yet. Updated by update-distribution-tap.mjs.
class VaultSync < Formula
  desc "End-to-end encrypted synchronization for Markdown vaults"
  homepage "https://github.com/UekoMundo/homebrew-tap/releases"
  url "https://github.com/UekoMundo/homebrew-tap.git", using: :git
  version "0.0.0"
  license "MIT"

  disable! date: "2026-09-03", because: "has no verified binary release in UekoMundo/homebrew-tap"

  def install
    odie "Publish a verified Kenkon release before enabling this formula."
  end
end
