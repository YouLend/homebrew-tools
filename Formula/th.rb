class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.1.9.tar.gz"
  sha256 "9a65d8d9da8cd41d32a612a53b8f2e2530b1cb2bb77b6de62906e9774e4fa921"
  license ""

  def install
    Dir.chdir("th") do
      bin.install "installer.sh" => "th-install"
      pkgshare.install "th-functions.sh"
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
