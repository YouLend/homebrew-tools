class Th < Formula
  desc ""
  homepage "https://github.com/YouLend/homebrew-tools"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.6.6.tar.gz"
  sha256 "ab65e5bf0fedf613d99399cc6adf8e62ccced197b0902382fce1b684ffe54497"
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
