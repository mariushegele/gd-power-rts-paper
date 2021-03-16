TEXFILES := paper.tex
PDFFILES := $(TEXFILES:%.tex=%.pdf)

all: pdf nice

pdf: $(PDFFILES)

clean: nice
	rm -f $(PDFFILES)

nice:
	rm -f *.aux *.log *.out *.thm *.fdb_latexmk *.fls *.synctex.gz lsg.tex

%.pdf: %.tex
	latexmk -pdf -synctex=1 $<
