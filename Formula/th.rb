class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.2.0.tar.gz"
  sha256 "64c107f847f2d0d4cfa91b094af53a5b126d792005df024b69ff83380822b37d"
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
