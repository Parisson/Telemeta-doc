MAIN_FILE = dlfm2014_Telemeta

pdf:
	echo ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex
	bibtex ${MAIN_FILE}.aux
	pdflatex ${MAIN_FILE}.tex
	bibtex ${MAIN_FILE}.aux
	pdflatex ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex

clean:

	rm -f *.aux *.bbl *.blg *.bst *.dvi *.idx *.lof *.log *.toc *.out  *.ind *.ilg *~
