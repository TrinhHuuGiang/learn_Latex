### Template LaTeX project
- [Meaning of file extension](../_200_LaTeX_wikibook/_204_pick_files_to_tex.md)
```c
REPORT
+--- main/
|       +--- cover.tex     // Cover page
|       +--- main_doc.tex  // Main layout for document
|       +--- backup/
+--- structure/
|       +--- preamble/
|       |       +--- preamble.tex   // Libraries and new defininitions
|       |       +--- backup/
|       +--- predefine/
|       |       +--- glossary/      // Definition of Glossaries 
|       |       |       +--- gl01_Topic.tex
|       |       |       +--- gl02_Topic.tex
|       |       |       +--- ...
|       |       |       +--- backup/
|       |       +--- page_style/    // Design page style: default or `fancyhdr`
|       |               +--- page_style.tex
|       |               +--- backup/
|       +--- front_matter/          
|       |       +--- title/         // title/title page content
|       |       |       +--- title.tex
|       |       |       +--- backup/
|       |       +--- information/   // necessary information
|       |       |       +--- copyright_notice.tex
|       |       |       +--- backup/
|       |       +--- dedication/
|       |       |       +--- dedication.tex        // authors, groups
|       |       |       +--- acknowledgements.tex  // notice from publisher
|       |       |       +--- backup/
|       |       +--- table_of_contents/
|       |       |       +--- table_of_contents.tex // design and display TOC
|       |       |       +--- backup/
|       |       +--- abbreviation/
|       |       |       +--- abbreviation.tex      // design and display abbreviation
|       |       |       +--- backup/
|       |       +--- list_of_objects/              // design and display LOT, LOF
|       |       |       +--- list_of_tables.tex
|       |       |       +--- list_of_figures.tex
|       |       |       +--- backup/
|       |       +--- preface/              // The purpose of the document , thanks to
|       |       |       +--- preface.tex
|       |       |       +--- backup/
|       |       +--- abstract/             // main content and summary of chapters
|       +--- main_matter/
|       |       +--- chapter1_topic/
|       |       |       +--- sec01_topic.tex
|       |       |       +--- ...
|       |       |       +--- summary.tex
|       |       |       +--- backup/
|       |       +--- chapter2_topic/
|       |       |       +--- sec01_topic.tex
|       |       |       +--- ...
|       |       |       +--- summary.tex
|       |       |       +--- backup/
|       |       +---  ...
|       +--- back_matter/
|               +--- appendix/  //need: \appendix
|               |       +--- section1_topic // Information for mentions at `main matter`
|               |       |       +--- ap01_topic.tex
|               |       |       +--- ...
|               |       |       +--- backup/
|               |       +--- section2_topic
|               |       |       +--- ap01_topic.tex
|               |       |       +--- ...
|               |       |       +--- backup/
|               |       +---  ...
|               +--- glossary/       // design and dislay list glossary at `predefine`
|               |      +--- print_glossary.tex 
|               |      +--- backup/ 
|               +--- bibliography/   // need \bibliographystyle{...}, \bibliography{...}
|               |      +--- bi01_topic.bib 
|               |      +--- ...
|               |      +--- backup/
|               +--- index/   // design and dislay indexing
|                      +--- index.tex
|                      +--- backup/
|
END
```

### tools
- [compile](./_004_compile_to_tempfs.md)
- [fix missing part](../_200_LaTeX_wikibook/_212_special_page.md)