cask "vitals" do
  version "0.1.0"
  sha256 "27dc6ab985677b0ffa92e2c352eda04d3900c35bf00cc17daf67fdf970d27334"

  url "https://github.com/UekoMundo/homebrew-tap/releases/download/vitals-v0.1.0/Vitals-0.1.0-macos.zip"
  name "Vitals"
  desc "Local-first system monitor"
  homepage "https://github.com/UekoMundo/homebrew-tap/releases"

  deprecate! date:             "2026-08-25",
             because:          "is included in PowerTools",
             replacement_cask: "powertools"

  depends_on macos: :sonoma

  app "Vitals.app"

  uninstall quit: "dev.vstack.vitals"
end
