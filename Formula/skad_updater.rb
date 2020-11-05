class SkadUpdater < Formula
  desc "SKAdNetworks Updater"
  homepage "https://github.com/fyber-engineering/SKAd_updater/"
  url "https://github.com/fyber-engineering/SKAd_updater/releases/download/1.0.4/skad_updater-1.0.4.tar.gz"
  sha256 "04dec6a6feed70883b1c94524ad2e17f3d3d2ede7aa857e4bee62309748429e5"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "bin/skad_updater"
    man1.install "docs/skad_updater.1"
    bash_completion.install "completions/completions.bash" => "skad_updater"
  end

  test do
    puts "Testing SKAD updater"
    help_out =  shell_output("skad_updater -h")
    puts "skad_updater -h" + help_out
    assert_true help_out.start_with?("*** Welcome to SKAd Updater")
    puts  shell_output("man skad_updater")
    assert_true shell_output("man skad_updater")
  end
end
