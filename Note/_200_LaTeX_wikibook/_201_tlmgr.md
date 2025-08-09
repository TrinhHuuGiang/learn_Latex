## tlmgr
- TeX distribution using `texconfig`, meanwhile TeXLive using `tlmgr` for download and manage extended feature packages for implement document.
- content:
    - [tlmgr option](#tlmgr-option)
    - [add packages](#interesting-packages)
    - [remove packages]

### tlmgr option
```bash
tlmgr option

# option can change by using keyword, e.g.: tlmgr option autobackup 1
Number of backups to keep (autobackup): 1
Directory for backups (backupdir): tlpkg/backups
Generate formats at installation or update (formats): 1
Install documentation files (docfiles): 1
Install source files (srcfiles): 1
Default package repository (repository): https://mirror.unpad.ac.id/ctan/systems/texlive/tlnet
Run postinst code blobs (postcode): 1
Destination for symlinks for binaries (sys_bin): /usr/local/bin
Destination for symlinks for info docs (sys_info): /usr/local/share/info
Destination for symlinks for man pages (sys_man): /usr/local/share/man
```

### interesting packages
- Syntax:
    ```bash
        # tlmgr install amsmath babel carlisle ec geometry graphics hyperref lm
        marvosym oberdiek parskip pdftex-def url
    ```
|packages|Effect|
|-|-|
|amsmath| The essentials for math typesetting.|
|babel (and `hyphen-`[language])|   Internationalization support.|
|carlisle| Bundle package required for some babel features.|
|ec| Required for T1 encoding.|
|geometry| For page layout.|
|graphics| The essentials to import graphics.|
|hyperref| PDF bookmarks, PDF followable links, link style, TOC links, etc.|
|lm| One of the best Computer Modern style font available for several font encodings (such as T1).|
|marvosym| Several symbols, such as the official euro.|
|oberdiek| Bundle package required for some geometry features.|
|parskip| Let you configure paragraph breaks and indents properly.|
|pdftex-def| Required for some graphics features.|
|url| Required for some hyperref features.|


### remove packages
```bash
tlmgr remove <package>
```