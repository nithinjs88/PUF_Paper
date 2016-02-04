all: cca.pdf


cca.pdf: cca.tex paper.tex
	latex $<
#	bibtex cca
	latex $<
	latex $<
	dvips -o cca.ps cca.dvi
	ps2pdf cca.ps cca.pdf
#	rm -f *.dvi *.aux *.log *.ps   *.bbl *.blg figs/*.*.bak *.thm

quick: 
	latex cca.tex
	dvips -o cca.ps cca.dvi
	ps2pdf cca.ps cca.pdf

clean:
	rm -f *.dvi *.aux *.log *.ps *.pdf  *.bbl *.blg figs/*.*.bak *.thm

