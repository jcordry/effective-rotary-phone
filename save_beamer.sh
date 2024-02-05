#!/usr/bin/env bash

markdown_file=$1
pdf_file=${markdown_file%.md}.pdf

pandoc -f markdown+yaml_metadata_block -t beamer -V theme=Antibes -V colortheme=beaver -css css/my_slides.css -s $markdown_file -o $pdf_file
# scp $pdf_file oc:iws/mgd/
# \rm -f $pdf_file
