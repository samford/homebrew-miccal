cask "binarymantest2" do
  version "1"
  sha256 :no_check

  url "https://github.com/miccal/personal-files/blob/master/binarytest"
  name "binarymantest2"
  homepage "https://github.com/"

  binary "#{staged_path}/binarytest"
end
