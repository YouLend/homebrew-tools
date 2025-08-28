class Th < Formula
  desc ""
  homepage "https://github.com/YouLend/homebrew-tools"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.6.0.tar.gz"
  sha256 "adcacada3068819461eb25fe690c0530698c605855bdcfddaf0bd9605d0b9494"
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
