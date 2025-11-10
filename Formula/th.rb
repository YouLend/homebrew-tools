class Th < Formula
  desc ""
  homepage "https://github.com/YouLend/homebrew-tools"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.6.8.tar.gz"
  sha256 "ccf28d009eda90c0aa2c2ed35cc1c55208872596dbacf640c8b477a13986b664"
  license ""

  def install
    Dir.chdir("th") do
      bin.install "th_install.sh" => "th-install"
      pkgshare.install "th.sh"
      pkgshare.install "config"
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
