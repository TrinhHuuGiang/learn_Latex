### Template LaTeX project
- [Meaning of file extension](../_200_LaTeX_wikibook/_204_pick_files_to_tex.md)
```txt
Project/
│
├── main.tex                   # File main, arrange contents that has been written into complete books
├── Part/                      # Content of Book
│   ├── include_lib/           # General configuration files
│   │   ├── settings.tex       
│   │   ├── custom_commands.tex
│   │   └── my_style.sty
│   │
│   ├── cover_book/            # Cover page, topic, author,...
│   │   └── cover.tex
│   │
│   ├── index_page/            # Table of contents, thanks, category...
│   │   └── index.tex
│   │
│   ├── chapter_1/             # Chapter and this revision
│   │   └── chapter1.tex
│   │
│   ├── chapter_2/
│   │   └── chapter2.tex
│   │
│   └── appendix/
│       └── appendix.tex
│
├── Rsrc/                      # Resource for book
│   ├── image/                 # Artwork (image, chart...)
│   │   ├── fig1.png
│   │   ├── logo.pdf
│   └── bib/                   # References
│       └── references.bib
│
├── Revision/                  # Draft, old version
│   ├── n_001_topic/           # Revision 1, chủ đề 0
│   ├── n_002_topic/           # Revision 2...
│   └── n_003_topic/
│
├── build/                     # Auto gen
│   └── (auto-generated files)
│
└── Makefile                   # (Option or using `latexmk`) Using make help check changes build automatic

```

### main.tex template
```latex
%========================================================
% Preamble
%========================================================


%========================================================
% Document
%========================================================
```