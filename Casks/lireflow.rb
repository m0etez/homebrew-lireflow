cask "lireflow" do
  version "1.2.1"
  sha256 "744d771297be09731f850375f78baf0a778042f2eab5c24393ca952681cadc5f"

  url "https://github.com/m0etez/LireFlow/raw/main/dist/LireFlow-#{version}.dmg"
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
