class Th < Formula
  desc ""
  homepage "https://github.com/YouLend/homebrew-tools"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.6.2.tar.gz"
  sha256 "f28bddbf02ffb8f28a97acaa5d9b7c8970d89f6fce0384041bc866e78f1f789d"
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
