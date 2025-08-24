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
|       |       +--- glossary/      // Definition of Glossaries, selected at `backmatter`
|       |       |       +--- gl01_Topic.tex
|       |       |       +--- gl02_Topic.tex
|       |       |       +--- ...
|       |       |       +--- backup/
|       |       +--- page_style/    // Design page style: default or `fancyhdr`
|       |               +--- page_style.tex
|       |               +--- backup/
|       +--- front_matter/          
|       |       +--- title/         // Design title/title page content
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
|       |       +--- abstract/             // Main content and summary of chapters
|       |               +--- abstract.tex
|       |               +--- backup/
|       +--- main_matter/
|       |       +--- chapter01_topic/
|       |       |       +--- sec01_topic.tex
|       |       |       +--- ...
|       |       |       +--- summary.tex
|       |       |       +--- backup/
|       |       +--- chapter02_topic/
|       |       |       +--- sec01_topic.tex
|       |       |       +--- ...
|       |       |       +--- summary.tex
|       |       |       +--- backup/
|       |       +---  ...
|       +--- back_matter/
|               +--- appendix/  //need: \appendix
|               |       +--- section01_topic // Information for mentions at `main matter`
|               |       |       +--- ap01_topic.tex
|               |       |       +--- ...
|               |       |       +--- backup/
|               |       +--- section02_topic
|               |       |       +--- ap01_topic.tex
|               |       |       +--- ...
|               |       |       +--- backup/
|               |       +---  ...
|               +--- glossary/       // design and dislay list glossary select at `predefine`
|               |      +--- print_glossary.tex // select glossary
|               |      +--- backup/ 
|               +--- bibliography/   // design and dislay list selected .bib
|               |      +--- bi01_topic.bib 
|               |      +--- ...
|               |      +--- print_bibliography.tex // select .bib
|               |      +--- backup/
|               +--- index/   // design and dislay indexing
|                      +--- index.tex
|                      +--- backup/
|
END
```

### tools
- [implement folder template _ shell for bash](./_003_template.sh)
    - Note that folder will create at current working folder
    - [See result after create tree folder by this shell script](#tree-folder-result)
- [template main.tex](../../Code/_212_special_page/)
- [compile](./_004_compile_to_tempfs.md)
- [fix missing part](../_200_LaTeX_wikibook/_212_special_page.md)

### Tree folder result
- Command
    ``` bash 
    chmod u+x _003_template.sh

    ./_003_template.sh
    
    tree | less
    ```
- result:
    ```bash
        .
        ├── _003_template.sh
        ├── _1_main
        │   ├── backup
        │   ├── cover.tex
        │   └── main_doc.tex
        └── _2_structure
            ├── _1_preamble
            │   ├── backup
            │   └── preamble.tex
            ├── _2_predefine
            │   ├── _1_glossary
            │   │   ├── backup
            │   │   └── gl01_Topic_template.tex
            │   └── _2_page_style
            │       ├── backup
            │       └── page_style.tex
            ├── _3_front_matter
            │   ├── _1_title
            │   │   ├── backup
            │   │   └── title.tex
            │   ├── _2_information
            │   │   ├── backup
            │   │   └── copyright_notice.tex
            │   ├── _3_dedication
            │   │   ├── acknowledgements.tex
            │   │   ├── backup
            │   │   └── dedication.tex
            │   ├── _4_table_of_contents
            │   │   ├── backup
            │   │   └── table_of_contents.tex
            │   ├── _5_abbreviation
            │   │   ├── abbreviation.tex
            │   │   └── backup
            │   ├── _6_list_of_objects
            │   │   ├── backup
            │   │   ├── list_of_figures.tex
            │   │   └── list_of_tables.tex
            │   ├── _7_preface
            │   │   ├── backup
            │   │   └── preface.tex
            │   └── _8_abstract
            │       ├── abstract.tex
            │       └── backup
            ├── _4_main_matter
            │   └── chapter01_topic_template
            │       ├── backup
            │       ├── sec01_topic_template.tex
            │       └── summary.tex
            └── _5_back_matter
                ├── _1_appendix
                │   └── section01_topic_template
                │       ├── ap01_topic_template.tex
                │       └── backup
                ├── _2_glossary
                │   ├── backup
                │   └── print_glossary.tex
                ├── _3_bibliography
                │   ├── backup
                │   ├── bi01_topic_template.tex
                │   └── print_bibliography.tex
                └── _4_index
                    ├── backup
                    └── index.tex

    ```