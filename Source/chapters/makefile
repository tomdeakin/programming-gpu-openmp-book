#
#  USAGE:
#     make       ... to build a PDF of the book
#     make clean ... to remove LaTeX working files
#

LATEX = pdflatex
BIBTEX = bibtex
INDEX = makeindex
GLOS = makeglossaries

SRC  = book

ompgpu.pdf: $(SRC).tex
	$(LATEX) $(SRC)
	$(INDEX) $(SRC)
	$(GLOS) $(SRC)	
	$(BIBTEX) $(SRC)
	$(LATEX) $(SRC)
	$(LATEX) $(SRC)

clean:
	rm -f *.dvi *.log *.aux *.bbl *.blg *.toc *.idx *.ind *.ilg *.glo *.glg *.gls *.ist *.out
	mv -f $(SRC).pdf $(SRC).old.pdf

#	$(BIBTEX) $(SRC:.tex=)
