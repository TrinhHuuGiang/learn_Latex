## List of tools can find after install TeX Live
- Default TeX Live was installed in `/usr/local/texlive/YYYY/` and tools for compiler LaTeX can find in `/usr/local/texlive/YYYY/bin/x86_64-linux`
- After setup append to PATH `/usr/local/texlive/2025/bin/x86_64-linux` tools can be called by name.
- List of tools available
    ```bash
    ls /usr/local/texlive/2025/bin/x86_64-linux
    
    afm2tfm       gftype           mkocp           texconfig
    allcm         inimf            mkofm           texconfig-dialog
    allec         initex           mktexfmt        texconfig-sys
    allneeded     kpseaccess       mktexlsr        texhash
    (*) bibtex    kpsepath         mktexmf         texlinks
    dvi2fax       kpsereadlink     mktexpk         texlua
    dvilualatex   kpsestat         mktextfm        texluac
    dviluatex     kpsetool         mpost           thumbpdf
    (*) dvipdfm   kpsewhere        mptopdf         (*) tlmgr
    dvipdfmx      kpsewhich        pdfatfi         tlshell
    dvipdft       kpsexpand        pdfetex         updmap
    dvips         latex            (*) pdflatex    updmap-sys
    dvired        luahbtex         pdftex          updmap-user
    dvitomp       lualatex         pktogf          xdvi
    e2pall        luaotfload-tool  pktype          xdvipdfmx
    ebb           luatex           ps2frag         xdvi-xaw
    epstopdf      lwarpmk          pslatex         (*) xelatex
    etex          makeindex        repstopdf       xelatex-dev
    extractbb     man              r-mpost         xelatex-unsafe
    fmtutil       mf               rungs           xetex
    fmtutil-sys   mf-nowin         simpdftex       xetex-unsafe
    fmtutil-user  mfplain          synctex
    gftodvi       mft              teckit_compile
    gftopk        mkindex          tex
    ```
- (*) is popular build tools
    - package manager
        - tlmgr: TeX Live manager
    - export pdf
        - pdflatex: LaTeX create pdf is preparation based on TeX.
        - xelatex:  support Unicode and fontstyle better than pdflatex
        - bibtex:   support Latex processing and linking references
        - dvipdfm:  convert .dvi (DeVice Independent file) format to .pdf(Portable Document Format - printable)
    - Other tools:
        - auto compile output file (pdf, ps, dvi,...): [latexmk](../_200_LaTeX_wikibook/_203_compile.md#automation-build-by-latexmk) 