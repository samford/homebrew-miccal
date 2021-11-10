## Why do you have these as separate Casks?

* `m-libreoffice` will install the latest version (be it a stable release or a release candidate) of `libreoffice` and the binary `soffice` aliased to the binary `libreoffice` using the AARNet (Australian Academic and Research Network) as a mirror.
* `m-little-snitch` will install the latest version (be it a stable release or a nightly release) of `little-snitch`.
* `m-mactex-no-gui` will install the latest version of `mactex-no-gui` using the AARNet as a mirror.
* `m-tex-live-utility` will install the latest version (be it a stable release or a beta release) of `tex-live-utility`.
* `m-tor-browser` will install the latest `en-US`-language version (be it a stable release or an alpha release) of `tor-browser`.
* `m-vlc` will install the latest version of `vlc` and the binary `VLC` aliased to the binary `vlc` using the AARNet as a mirror.

These may be installed via

`brew install miccal/miccal/<cask>`

Alternatively,

`brew tap miccal/miccal`

and then

`brew install <cask>`

## Why do you have these as separate Formulae?

* `m-mpv` will install the `--HEAD` version of `mpv` and generate an app bundle by adding the following lines to the end of the [`def install` block](https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/mpv.rb):
```
    system Formula["python@3.9"].opt_bin/"python3", "TOOLS/osxbundle.py", "build/mpv"
    prefix.install "build/mpv.app"
```

This may be installed via

`brew install --HEAD miccal/miccal/m-mpv`

and upgraded via

`brew upgrade --fetch-HEAD miccal/miccal/m-mpv`

Alternatively,

`brew tap miccal/miccal`

and then

`brew install --HEAD m-mpv`

and

`brew upgrade --fetch-HEAD m-mpv`

Check for new versions of `--HEAD` by running the command

`git ls-remote https://github.com/mpv-player/mpv.git HEAD`

and comparing the commit number with the output of `mpv --version`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
