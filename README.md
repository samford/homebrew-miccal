## Why do you have these as separate Casks?

* [`m-dwsim`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-dwsim.rb) will install the chemical process simulation software DWSIM, which does not pass the required signature verification checks for inclusion in [`homebrew-cask`](https://github.com/Homebrew/homebrew-cask).
* [`m-libreoffice`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-libreoffice.rb) will install the latest version (be it a stable release, a release candidate or a development release) of [`libreoffice`](https://github.com/homebrew/homebrew-cask/blob/master/Casks/l/libreoffice.rb) with the binary `soffice` aliased to the binary `libreoffice`.
* [`m-little-snitch`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-little-snitch.rb) will install the latest version (be it a stable release or a nightly release) of [`little-snitch`](https://github.com/homebrew/homebrew-cask/blob/master/Casks/l/little-snitch.rb).
* [`m-mactex-no-gui`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-mactex-no-gui.rb) will install the latest version of [`mactex-no-gui`](https://github.com/homebrew/homebrew-cask/blob/master/Casks/m/mactex-no-gui.rb) using the [AARNet (Australian Academic and Research Network)](https://mirror.aarnet.edu.au) as a mirror.
* [`m-microsoft-defender`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-microsoft-defender.rb) will install the latest version of Microsoft Defender without the dependency on [`microsoft-auto-update`](https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/m/microsoft-auto-update.rb) (I require this for my work-managed Mac machines -- DO NOT INSTALL THIS TERRIBLE PIECE OF SHIT UNLESS YOU HAVE TO!).
* [`m-microsoft-outlook`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-microsoft-outlook.rb) will install the latest version of [`microsoft-outlook`](https://github.com/homebrew/homebrew-cask/blob/master/Casks/m/microsoft-outlook.rb) without the dependency on [`microsoft-auto-update`](https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/m/microsoft-auto-update.rb).
* [`m-microsoft-teams`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-microsoft-teams.rb) will install the latest "[Teams 2.1 Public (R4) build](https://raw.githubusercontent.com/ItzLevvie/MicrosoftTeams-msinternal/master/defconfig2)" version of [`microsoft-teams`](https://github.com/homebrew/homebrew-cask/blob/master/Casks/m/microsoft-teams.rb) without the dependency on [`microsoft-auto-update`](https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/m/microsoft-auto-update.rb).
* [`m-mpv`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-mpv.rb) will install [`mpv`](https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/m/mpv.rb) from [`homebrew-core`](https://github.com/Homebrew/homebrew-core) with an `.app` bundle built and maintained by [Vítor Galvão](https://github.com/vitorgalvao).
* [`m-obs`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-obs.rb) will install the latest version (be it a stable release, a release candidate or a beta release) of [`obs`](https://github.com/homebrew/homebrew-cask/blob/master/Casks/o/obs.rb).
* [`m-tex-live-utility`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-tex-live-utility.rb) will install the latest version (be it a stable release or a beta release) of [`tex-live-utility`](https://github.com/homebrew/homebrew-cask/blob/master/Casks/t/tex-live-utility.rb).
* [`m-tor-browser`](https://github.com/miccal/homebrew-miccal/blob/master/Casks/m-tor-browser.rb) will install the latest version (be it a stable release or an alpha release) of [`tor-browser`](https://github.com/homebrew/homebrew-cask/blob/master/Casks/t/tor-browser.rb).

These may be installed via

`brew install miccal/miccal/<cask>`

Alternatively,

`brew tap miccal/miccal`

and then

`brew install <cask>`
