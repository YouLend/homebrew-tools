class Th < Formula
  desc ""
  homepage "https://github.com/YouLend/homebrew-tools"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.5.9.tar.gz"
  sha256 "73fc07433afa1aedea82641b3251893eb8d0395f9e4c07b78b7395c0b37b148f"
  license ""

  def install
    Dir.chdir("th") do
      bin.install "config/installer.sh" => "th-install"
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
