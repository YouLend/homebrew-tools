class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/YouLend/homebrew-scripts/archive/refs/tags/th-v1.2.5.tar.gz"
  sha256 "1534626387426239266aebad4b18b4df4141febf80d4897c4c39d473cda604db"
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
