cask "m-mpv" do
  version "2023.1"
  sha256 :no_check

  url "https://github.com/vitorgalvao/mpv-dummy/releases/download/#{version}/mpv-dummy.zip"
  name "Mpv"
  homepage "https://mpv.io/"

  app "mpv.app"
end