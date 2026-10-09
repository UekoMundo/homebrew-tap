cask "downpour" do
  version "0.1.1"
  sha256 "e5ea42eb490faaceed3870ff2f6ef30cbd7264fbd74a18a372077b67b95fceb3"

  url "https://github.com/UekoMundo/homebrew-tap/releases/download/downpour-v0.1.1/Downpour-0.1.1-macos.zip"
  name "Downpour"
  desc "Back up iCloud Drive and Photos libraries"
  homepage "https://github.com/UekoMundo/homebrew-tap/releases"

  deprecate! date:             "2026-08-25",
             because:          "is included in PowerTools",
             replacement_cask: "powertools"

  depends_on macos: :sonoma

  app "Downpour.app"

  uninstall quit: "dev.vstack.downpour"
end
