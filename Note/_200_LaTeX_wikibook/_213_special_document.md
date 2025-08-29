### References
- [moderncv](../../Doc/moderncv_userguide.pdf)

### Content
- [Writing Cirriculum vitae](#cv)



#### CV
##### 1. Install `moderncv` package
- Download by tool `tlmgr` in bin folder of TeXLive
    ```bash
    sudo tlmgr install moderncv
    ```
- Search document for this package
    ```bash
        tlmgr info --list moderncv

        # search these inform at return
        # some doc file use full:
        # - moderncv_userguide.pdf
        # - template.tex
        doc files:
            texmf-dist/doc/latex/moderncv/CHANGELOG
            texmf-dist/doc/latex/moderncv/KNOWN_BUGS
            texmf-dist/doc/latex/moderncv/LICENSE.txt
            texmf-dist/doc/latex/moderncv/README.md details="Readme"
            texmf-dist/doc/latex/moderncv/manual/moderncv_userguide.pdf details="Package documentation"
            texmf-dist/doc/latex/moderncv/manual/moderncv_userguide.tex
            texmf-dist/doc/latex/moderncv/picture.eps
            texmf-dist/doc/latex/moderncv/picture.jpg
            texmf-dist/doc/latex/moderncv/publications.bib
            texmf-dist/doc/latex/moderncv/signature.png
            texmf-dist/doc/latex/moderncv/template.tex    
    ``` 

##### 2. Run test file `template.tex`
- Prerequisite, these package should required before compile:
    ``` bash
    sudo tlmgr install pgf qrcode # tikz inside pgf
    sudo tlmgr install tikzmark 
    sudo tlmgr install changepage
    ```
- Copy `template.tex` exist on list above then compile it


