class Extole < Formula
  desc "Extole developer CLI"
  homepage "https://github.com/extole/extole-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/extole/extole-cli/releases/download/v#{version}/extole-darwin-arm64"
      sha256 "3e0492c4172562d23c03f6d53c15d9a57f9c657e8a302a303663c68ad768ddca"
    end

    on_intel do
      url "https://github.com/extole/extole-cli/releases/download/v#{version}/extole-darwin-x64"
      sha256 "fe02d4e67ef7900bb030866ed4648af41098075050adc5d8555e5a2116961b56"
    end
  end

  def install
    bin.install Dir["extole-darwin-*"].first => "extole"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/extole --version")
  end
end
