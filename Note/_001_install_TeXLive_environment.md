# References
- [The LaTeX Project](https://www.latex-project.org/get/)
- To do install TexLive:
    - [1. Download installer](#1-download-install-tl-dowloader-tex-distribute-for-texlive)
    - [(option) 2.1 Dowload full TeXLive](#option-full-21-dowload-default-texlive-full-package-2025-7gb)
    - [(option) 2.2 Dowload small TeXLive](#option-lightweight-22-download-texlive-small-2025-1gb)
    - [3.1 Setup PATH to use TeXLive ](#31-setup-temporary-path-for-bash)
    - [3.2 Setup run command `.filerc` for VScode](#32-setup-longterm-path-for-bash-by-bashrc)
        - [setup PATH](#vscode-setup-bash-terminal)
    - [Delete](#delete-texlive)
## TeX distributions
|OS|distribution| Role | Text editor |
|-|-|-|-|
|Linux| TeX Live | Compiler & Package manager| VScode + LaTeX workshop |
|Mac OS| MacTeX | ^^^^^ | TeXShop (MacTeX integrated), VScode |
|Window|TeX Live , MikTek| ^^^^^ | TeXstudio, VScode |
|Online|Overleaf, Peeria, CoCalc| ^^^^^ & editor | |

### Install `TexLive` and setup `VScode`
#### 1. Download `install-tl` dowloader TeX distribute for TeXLive
- `tl;dr`(too long, didn't read):
    ```bash
    # cd to working directory user want design for LaTeX
    cd /tmp # working directory of your choice 

    # download installer
    # (curl --help) -L Follow redirects, -o output file name
    curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

    # extract install texlive structure
    zcat < install-tl-unx.tar.gz | tar xf - # note final - on that command line 

    cd install-tl-2*
    ```
#### (option full) 2.1 Dowload Default TeXLive full package (2025 ~7+GB)
- [Reference download](https://www.tug.org/texlive/quickinstall.html)
- Download anything can download for LaTeX 

```bash
# INSTALL
###opt 1 : Latex 2025 default, everything will install ~ 7+GB
perl ./install-tl --no-interaction # as root or with writable destination
# may take several hours to run

```

#### (option lightweight) 2.2 Download TeXLive small (2025 ~1GB)
- [Reference download](https://www.tug.org/texlive/quickinstall.html)  
    ```txt
    By default, everything is installed (7+GB).

    To install a smaller scheme, pass --scheme=scheme to install-tl. For example, --scheme=small (corresponds to the BasicTeX variant of MacTeX).
    ```
    - problem when real install, --scheme=small not exist, follow step below to install right option.
- [Reference update](https://www.tug.org/mactex/morepackages.html)
    - *It contains all of the standard tools needed to write TeX documents, including TeX, LaTeX, pdfTeX, MetaFont, dvips, MetaPost, and XeTeX. BasicTeX does not overwrite the full distribution; it is installed in /usr/local/texlive/2025basic.*
- [Manual Doc](../Doc/BasicTeX.pdf)

```bash
perl ./install-tl

# because no supply flag `--no-interaction` we will dive into menu option
# -  first `install-tl` display a menu option
#   - input `s` to select scheme:
#   MENU
Select scheme:
 a [ ] full scheme (everything)
 b [ ] medium scheme (small + more packages and languages)
 c [x] small scheme (basic + xetex, metapost, a few languages)
 d [ ] basic scheme (plain and latex)
 e [ ] minimal scheme (plain only)
 f [ ] infrastructure-only scheme (no TeX at all)
 g [ ] book publishing scheme (core LaTeX and add-ons)
 h [ ] ConTeXt scheme
 i [ ] GUST TeX Live scheme
 j [ ] teTeX scheme (more than medium, but nowhere near full)
 k [ ] custom selection of collections

Actions: (disk space required: 621 MB)
 <R> return to main menu
 <Q> quit

Enter letter to select scheme: 
a ~ 9GB,  b ~ 2.5GB, c ~ 700MB, d ~ 310MB, e ~ 85MB
```
- After choose expected scheme, return main menu , command `i` to install.
- By default the installation will save latex in:
    ```bash
    /usr/local/texlive/2025 # another version can be 2024 ,...
    ```
    - If you want install any distribute on this device, can choose option change directory in `install-tl` but normally 1 latex is enough.

#### 3.1 Setup temporary PATH for bash
- **Note: after close bash, current PATH to TeXLive will clean, export PATH each new bash**
```bash
# Finally, prepend /usr/local/texlive/YYYY/bin/PLATFORM to your PATH,
# e.g., /usr/local/texlive/2025/bin/x86_64-linux


# first register a variable path to TeXLive tools with PATH
export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH

# then check link existed in PATH
echo $PATH

echo $PATH
/usr/local/texlive/2025/bin/x86_64-linux:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# check version TeXLive
latex --version

pdfTeX 3.141592653-2.6-1.40.28 (TeX Live 2025)
kpathsea version 6.4.1
Copyright 2025 Han The Thanh (pdfTeX) et al.
There is NO warranty....
```


#### 3.2 Setup longterm PATH for bash by `.bashrc`
##### VScode setup `bash` terminal
- Firt create `run command` file for terminal in VScode
    - Create a file bash template like this:
    ```bash
    #!/bin/bash

    echo "PART before $PATH"

    # register new PATH to texlive
    export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH

    echo -e "\n\n"

    echo "PART after $PATH"

    #ok
    echo -e "\n\nTexlive OK"
    ```

- In VScode on search bar type `>Open Users Settings (JSON)`, then append:
    ```json
    "terminal.integrated.profiles.linux": 
    {
        "texlive_small":
        {
            "path": "bash",
            "args":["--rcfile", "/home/giangtrinh/APP_RSC/Exe/Others_app/TeXLive/texlive_init_rc"]
        }
    }
    ```
- Now in terminal option will appear `texlive_small` option, click work in this environment.

### Delete TeXLive

```bash
rm -rf /usr/local/texlive/2025 # only remove 2025 :v if exist several another distribution

rm -rf ~/.texlive2025
```
