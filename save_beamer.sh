#!/usr/bin/env bash

markdown_file=$1
pdf_file=${markdown_file%.md}.pdf

pandoc -f markdown+yaml_metadata_block -t beamer -s $markdown_file -o $pdf_file
# scp $pdf_file oc:iws/mgd/
# \rm -f $pdf_file
