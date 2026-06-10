class Extole < Formula
  desc "Extole developer CLI"
  homepage "https://github.com/extole/extole-cli"
  version "0.4.0"
  license "UNLICENSED"

  on_macos do
    on_arm do
      url "https://github.com/extole/extole-cli/releases/download/v#{version}/extole-darwin-arm64"
      sha256 "b0ed930b1334b0c6d7a338c6f752a0be081e9ce29ae8f08aa222762614f032de"
    end

    on_intel do
      url "https://github.com/extole/extole-cli/releases/download/v#{version}/extole-darwin-x64"
      sha256 "e6f3505cfbc18c3fc99b132b122fb6160a685faea33dbd3062893c40c54dbdcf"
    end
  end

  def install
    bin.install Dir["extole-darwin-*"].first => "extole"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/extole --version")
  end
end
