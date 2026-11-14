cask "warren" do
  version "1.2"
  sha256 "0cb0b2908af229b38ac11c98939215fd8821691a2d139ed660a751ee66cafa37"

  url "https://github.com/siveesh/warren/releases/download/v#{version}/Warren-#{version}.dmg"
  name "Warren"
  desc "Cleanup, uninstaller, storage insight, Homebrew and menu bar monitoring"
  homepage "https://github.com/siveesh/warren"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Warren.app"

  uninstall launchctl: "com.siveesh.skmole.privilegedhelper",
            quit:      [
              "com.siveesh.skmole",
              "com.siveesh.skmole.menubar",
            ]

  zap trash: [
    "~/Library/Application Support/SK Mole",
    "~/Library/Group Containers/MURZTM33SD.com.siveesh.skmole",
    "~/Library/Preferences/com.siveesh.skmole.plist",
  ]

  caveats <<~EOS
    This release is Developer ID-signed but is not notarized.
    macOS may ask you to confirm the first launch of a downloaded copy.
    Warren's privileged helper needs your approval once in System Settings > General > Login Items & Extensions.
  EOS
end
