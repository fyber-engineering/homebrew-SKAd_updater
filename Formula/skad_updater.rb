class SkadUpdater < Formula
  desc "SK Ad Networks Updater"
  homepage "https://github.com/fyber-engineering/SKAd_updater"
  url "https://github.com/fyber-engineering/SKAd_updater/releases/download/1.0.0/skad_updater-1.0.0.tar.gz"
  sha256 "ffb29620f5550df2dcc0599e3b54d25850cdcf45c2016056c3d2e97526a632a9"
  license ""

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
    assert_true help_out.start_with?("*** Welcome to SK Ad Updater")
    puts  shell_output("man skad_updater")
    assert_true shell_output("man skad_updater")
  end
end
