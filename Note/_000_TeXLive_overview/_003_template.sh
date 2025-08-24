#!/bin/bash

save_point=""


# main
save_point="_1_main"
mkdir -p "$save_point/backup"
touch "$save_point/cover.tex"
touch "$save_point/main_doc.tex"



# preamble
save_point="_2_structure/_1_preamble"
mkdir -p "$save_point/backup"
touch "$save_point/preamble.tex"



# predefine
save_point="_2_structure/_2_predefine/_1_glossary"
mkdir -p "$save_point/backup"
touch "$save_point/gl01_Topic_template.tex"

save_point="_2_structure/_2_predefine/_2_page_style"
mkdir -p "$save_point/backup"
touch "$save_point/page_style.tex"



# pront matter
save_point="_2_structure/_3_front_matter/_1_title"
mkdir -p "$save_point/backup"
touch "$save_point/title.tex"

save_point="_2_structure/_3_front_matter/_2_information"
mkdir -p "$save_point/backup"
touch "$save_point/copyright_notice.tex"

save_point="_2_structure/_3_front_matter/_3_dedication"
mkdir -p "$save_point/backup"
touch "$save_point/dedication.tex"
touch "$save_point/acknowledgements.tex"

save_point="_2_structure/_3_front_matter/_4_table_of_contents"
mkdir -p "$save_point/backup"
touch "$save_point/table_of_contents.tex"

save_point="_2_structure/_3_front_matter/_5_abbreviation"
mkdir -p "$save_point/backup"
touch "$save_point/abbreviation.tex"

save_point="_2_structure/_3_front_matter/_6_list_of_objects"
mkdir -p "$save_point/backup"
touch "$save_point/list_of_tables.tex"
touch "$save_point/list_of_figures.tex"

save_point="_2_structure/_3_front_matter/_7_preface"
mkdir -p "$save_point/backup"
touch "$save_point/preface.tex"

save_point="_2_structure/_3_front_matter/_8_abstract"
mkdir -p "$save_point/backup"
touch "$save_point/abstract.tex"



# main matter
save_point="_2_structure/_4_main_matter/chapter01_topic_template"
mkdir -p "$save_point/backup"
touch "$save_point/sec01_topic_template.tex"
touch "$save_point/summary.tex"



# back matter
save_point="_2_structure/_5_back_matter/_1_appendix/section01_topic_template"
mkdir -p "$save_point/backup"
touch "$save_point/ap01_topic_template.tex"


save_point="_2_structure/_5_back_matter/_2_glossary"
mkdir -p "$save_point/backup"
touch "$save_point/print_glossary.tex"

save_point="_2_structure/_5_back_matter/_3_bibliography"
mkdir -p "$save_point/backup"
touch "$save_point/print_bibliography.tex"
touch "$save_point/bi01_topic_template.tex"

save_point="_2_structure/_5_back_matter/_4_index"
mkdir -p "$save_point/backup"
touch "$save_point/index.tex"