## Basic compile and export a pdf
- Below is a basic build command for Bash when build content only have some tex file implemented in `main_file.tex`
```bash
    mkdir -p ./build && \    # && continue execute next command if program return 0(ok) else ignore after &&
    pdflatex -output-directory="./build" -jobname="OUTPUT_file_PDF"  main_file.tex
```

## Automation build by `latexmk`
- Some scheme download for TeXlive like small or basic or minimize maybe not follow a tools name `latexmk`.
```bash
which latexmk

# if nothing return latexmk maybe not installed
tlmgr install latexmk # or sudo if install by default at /usr/local/texlive/...

# if sudo can't fine `latexmk` it maybe reason by sudo path don't know user PATH
# solution is type:
#  which tlmgr
#  sudo [link return from which] install latexmk
sudo /usr/local/texlive/2025/bin/x86_64-linux/tlmgr install latexmk

# log
tlmgr: package repository https://mirror.unpad.ac.id/ctan/systems/texlive/tlnet (verified)
[1/2, ??:??/??:??] install: latexmk.x86_64-linux [1k]
[2/2, 00:00/00:00] install: latexmk [689k]
running mktexlsr ...
done running mktexlsr.
tlmgr: package log updated: /usr/local/texlive/2025/texmf-var/web2c/tlmgr.log
tlmgr: command log updated: /usr/local/texlive/2025/texmf-var/web2c/tlmgr-commands.log


# re-check
tlmgr list --only-installed | grep -i "latexmk"

```