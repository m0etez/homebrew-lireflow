cask "lireflow" do
  version "1.2.1"
  sha256 "61cc9587b03efc41f650763710fcef725db7246eed66f0ecee18c42062006d2e"

  url "https://github.com/m0etez/LireFlow/releases/download/v#{version}/LireFlow-#{version}.dmg"
  name "LireFlow"
  desc "Modern, native macOS RSS reader built with SwiftUI"
  homepage "https://github.com/m0etez/LireFlow"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LireFlow.app"

  zap trash: [
    "~/Library/Application Support/LireFlow",
    "~/Library/Caches/com.lireflow.app",
    "~/Library/Preferences/com.lireflow.app.plist",
  ]
end
