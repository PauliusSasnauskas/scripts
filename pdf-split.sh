pdfseparate Doc.pdf Doc-%02d.pdf
# ... make edits
pdfunite Doc-*.pdf Doc-New.pdf

# OR

# Take pages 1-9 and 26-end
pdftk input.pdf cat 1-9 26-end output outputfile.pdf