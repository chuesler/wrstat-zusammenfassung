#!/bin/bash

while file=$(inotifywait -q --format '%f' --exclude '.*.tmp' .); do
   if [ "$file" = "zusammenfassung.tex" ]; then
       pdflatex -interaction nonstopmode zusammenfassung.tex
   fi
done
