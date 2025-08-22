class Th < Formula
  desc ""
  homepage "https://github.com/YouLend/homebrew-tools"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.5.0.tar.gz"
  sha256 "333dd887a3c06c663f0b03935387881d236a9e41196103c38496386c11398d35"
  license ""

  def install
    Dir.chdir("th") do
      bin.install "installer.sh" => "th-install"
      pkgshare.install "th.sh"
      pkgshare.install "th.config.json"
      pkgshare.install "functions"
    end
  end

  def caveats
    <<~EOS
      To complete installation, run:

        th-install

      This will:
        - Install Teleport (if missing)
        - Configure your shell (e.g., .bashrc or .zshrc)

    EOS
  end
end
