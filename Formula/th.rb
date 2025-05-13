class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.1.5.tar.gz"
  sha256 "3c2003dbbdd2c7f497a713830e1e0625bb2d8aed874600c221f619f94dfba798"
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
