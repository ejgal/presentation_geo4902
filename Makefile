DOC=presentation_geo4902

pdf: $(DOC).pdf

all: pdf

present: $(DOC).pdf
	dspdfviewer $(DOC).pdf

$(DOC).pdf: $(DOC).tex references.bib
	pdflatex $(DOC)
	biber $(DOC)
	pdflatex $(DOC)
	pdflatex $(DOC)

clean:
	rm -fv *.aux *.log *.toc *.blg *.bbl *.synctex.gz
	rm -fv *.out *.bcf *blx.bib *.run.xml
	rm -fv *.nav *.snm

cleanall: clean
	rm -f $(DOC).pdf
