cask "lireflow" do
  version "1.1"
  sha256 "821d810db461ffc4049fb2a987bd8d5c122c849b6316d5f70292d3a69fd9c179"

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
