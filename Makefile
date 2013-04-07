# /bin/env make
# Make file for build the LaTeX document

CLEANFILE= *.aux *.log *.lof *.lol *.lot *.out *.sig* *.sym* *.toc *.bbl *.blg *.ilg

all: build-images main

main:
	pdflatex $@
	makeindex -s tabela-simbolos.ist -o $@.sigla $@.siglax
	bibtex $@
	pdflatex $@
	pdflatex $@
	pdflatex $@

build-images:
	ebb images/*.png
	ebb images/*.jpg

clean:
	rm -rf $(CLEANFILE)
