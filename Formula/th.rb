class Th < Formula
  desc ""
  homepage "https://github.com/YouLend/homebrew-tools"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.5.8.tar.gz"
  sha256 "e5aa429b2b3a6699d80e2145f6e4ba7393de294b3ab907aa1bf22d20d3cba379"
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
