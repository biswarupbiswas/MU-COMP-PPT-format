# Makefile for compiling the MU Computational Mathematics Beamer presentation

.PHONY: all clean

# Default target
all: sample.pdf

# Compile the presentation PDF
sample.pdf: sample.tex references.bib
	pdflatex -interaction=nonstopmode sample.tex
	biber sample
	pdflatex -interaction=nonstopmode sample.tex
	pdflatex -interaction=nonstopmode sample.tex

# Clean up LaTeX auxiliary and intermediate files
clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.bbl *.bcf *.blg *.run.xml *.fdb_latexmk *.fls
