cask "lenslet" do
  version "0.0.1"
  sha256 "2ddb46a30f43de0727102506bcdbae1da6e2c201f6bc47b2e537f1d17d25d9ac"

  url "https://github.com/kimdwkimdw/Lenslet/releases/download/#{version}/Lenslet-#{version}.zip"
  name "Lenslet"
  desc "Menu bar camera preview and photo capture"
  homepage "https://github.com/kimdwkimdw/Lenslet"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Lenslet.app"

  zap trash: "~/Library/Preferences/com.arthurk.lenslet.plist"

  caveats <<~EOS
    Lenslet is currently ad-hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, review it in System Settings > Privacy & Security.
    Photos in ~/Pictures/Lenslet are preserved on uninstall, including --zap.
  EOS
end
