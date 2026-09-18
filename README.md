# Homebrew Tap

Homebrew packages maintained by [kimdwkimdw](https://github.com/kimdwkimdw).

## Install Meownitor

```sh
brew install --cask kimdwkimdw/tap/meownitor
open /Applications/Meownitor.app
```

Universal app for Apple Silicon and Intel, macOS 13 or later.
The current version is `0.3.0-alpha.3`. It is ad-hoc signed and not notarized.
Input Monitoring is optional; enable it in System Settings to detect external keyboards.

```sh
brew upgrade --cask meownitor
brew uninstall --cask meownitor
```

For an identical manually installed app, use `brew install --cask --adopt kimdwkimdw/tap/meownitor`.
Uninstall preserves settings and downloaded cats; `--zap` removes preferences only.

## Install Lenslet

```sh
brew tap kimdwkimdw/tap
brew trust --cask kimdwkimdw/tap/lenslet
brew install lenslet
open /Applications/Lenslet.app
```

Or install directly with `brew install --cask kimdwkimdw/tap/lenslet`.
The current binary requires Apple Silicon and macOS 13 or later.
Lenslet is ad-hoc signed, not Apple-notarized. If macOS blocks the first launch,
review it in System Settings > Privacy & Security. Allow camera access when prompted.

```sh
brew upgrade --cask lenslet
brew uninstall --cask lenslet
```

Uninstall preserves photos in `~/Pictures/Lenslet`. `--zap` removes UI preferences only.

## Update a release

1. Publish a versioned `Lenslet-VERSION.zip` containing `Lenslet.app` in the
   [upstream releases](https://github.com/kimdwkimdw/Lenslet/releases).
2. Update `version` and `sha256` in `Casks/lenslet.rb` using `shasum -a 256` on that ZIP.
   Keep the architecture and minimum macOS requirements aligned with the binary.
3. Run `brew style --cask kimdwkimdw/tap/lenslet` and
   `brew audit --cask kimdwkimdw/tap/lenslet`, then commit and push.

CI checks the cask, downloads the release with checksum verification, and tests installation and removal.

For Meownitor, update `version` and `sha256` in `Casks/meownitor.rb` from the versioned upstream universal ZIP. Run the same style/audit checks with `kimdwkimdw/tap/meownitor`; CI tests both casks independently.
