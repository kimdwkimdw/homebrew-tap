cask "meownitor" do
  version "0.3.0-alpha.2"
  sha256 "a3cbfcea31d1f40056767533f0ed075b7d8c98dfec2c9dcf6eccc8aee1c6ad4d"

  url "https://github.com/kimdwkimdw/meownitor/releases/download/v#{version}/Meownitor-macOS-universal.zip"
  name "Meownitor"
  name "목펴라냥"
  desc "Menu bar cat companion for posture and break reminders"
  homepage "https://github.com/kimdwkimdw/meownitor"

  depends_on macos: :ventura

  app "Meownitor.app"

  uninstall quit: "com.arthurk.meownitor"

  zap trash: "~/Library/Preferences/com.arthurk.meownitor.plist"

  caveats <<~EOS
    Meownitor is currently ad-hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, review it in System Settings > Privacy & Security.
    Input Monitoring is optional. After an update, an existing grant may need to be
    removed and re-added for the current app in System Settings > Privacy & Security.
    Downloaded cats in ~/Library/Application Support/Meownitor are preserved, including --zap.
  EOS
end
