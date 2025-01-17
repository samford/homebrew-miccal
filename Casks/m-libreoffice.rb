cask "m-libreoffice" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "24.8.0.0.beta1"
  sha256 :no_check

  # Stable:
  #url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  # RC:
  #url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  # Dev:
  url "https://download.documentfoundation.org/libreoffice/testing/#{version.major_minor_patch}/mac/#{folder}/LibreOfficeDev_#{version}_MacOS_#{arch}.dmg"
  name "LibreOffice"
  homepage "https://www.libreoffice.org/"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/testing/"
    regex(/"LibreOffice(?:Dev)[._-](.+)[._-]MacOS[._-]#{arch}\.dmg"/i)
    strategy :page_match do |page, regex|
      version = page.scan(%r{href=["']v?(\d+(?:\.\d+)+)/?["' >]}i)
                    .flatten
                    .uniq
                    .map { |v| Version.new(v) }
                    .sort
      next if version.blank?

      path = version.last.to_s.concat("/mac/#{folder}/".to_s)
      next if path.blank?

      page = Homebrew::Livecheck::Strategy.page_content(URI.join(@url, path).to_s)
      next if page[:content].blank?

      page[:content].scan(regex).flatten
    end
  end

  # Stable, RC:
  #app "LibreOffice.app"
  # Dev:
  app "LibreOfficeDev.app", target: "LibreOffice.app"
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: "libreoffice"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      "#{appdir}/LibreOffice.app/Contents/MacOS/soffice" "$@"
    EOS
  end
end
