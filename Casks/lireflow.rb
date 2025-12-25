cask "lireflow" do
  version "1.1.0"
  sha256 "5983b99de39ed5502e408c29d948bd092246c47c3af3ee530a0007908337fe94"

  url "https://github.com/m0etez/LireFlow/releases/download/v#{version}/LireFlow-v#{version}-fixed.dmg"
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
