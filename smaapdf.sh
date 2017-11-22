#!/bin/bash
# Compress PDF
read -p "Enter compression level (screen, ebook, printer, prepress)  : " level
read -p "Enter name of output PDF : " outputpdf
read -p "Enter name of input PDF : " inputpdf

# Start compression
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/$level -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$outputpdf $inputpdf

echo "The compressed pdf has been saved as - $outputpdf"
