cask "lireflow" do
  version "1.2"
  sha256 "6adba09cae400e34efb5a919349eff5c89b780e9125c3974ddafe5d3ff663d6d"

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
