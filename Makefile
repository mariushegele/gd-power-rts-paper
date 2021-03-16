TEXFILES := paper.tex
PDFFILES := $(TEXFILES:%.tex=%.pdf)

all: pdf nice

pdf: $(PDFFILES)

clean: nice
	rm -f $(PDFFILES)

nice:
	rm -f *.aux *.bbl *.log *.out *.thm *.fdb_latexmk *.fls *.synctex.gz lsg.tex

%.pdf: %.tex *.bib
	latexmk -pdf -synctex=1 $<
