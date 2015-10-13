SOURCES=ann_pub.tex chapitre1.tex chapitre2.tex chapitre3.tex chapitre4.tex chapitre5.tex chapitre6.tex dedicace.tex introduction.tex notations.tex pagedegarde.tex remerciements.tex conclusion.tex resume.tex partie1.tex partie2.tex macros/macros.tex macros/macrosmath.tex these.tex
NAME=these
VIEWPDF=skim
AUX=auxi

all: $(NAME).pdf
	
		
$(NAME).pdf: $(NAME).aux $(NAME).blg $(NAME).bbl
	pdflatex $(NAME) 
	pdflatex $(NAME) 
	bibtex $(NAME)
	pdflatex $(NAME)

$(NAME).aux:	$(SOURCES)
	pdflatex $(NAME) 

$(NAME).blg $(NAME).bbl: $(NAME).aux $(NAME).bib
	bibtex $(NAME)

clean:
	# rm -f *.bbl
	rm -f $(NAME).blg
	rm -f $(NAME).lof
	rm -f $(NAME).lot
	rm -f $(NAME).out
	rm -f *.aux
	rm -f *.log
	rm -f $(NAME).dvi
#	rm -f $(NAME).pdf
	rm -f $(NAME).ps
	rm -f $(NAME).txt
	rm -f $(NAME).toc
	rm -f *~
	rm -f $(NAME).mtc*
	rm -f $(NAME).maf
	rm -f $(NAME).fls
	rm -f $(NAME).ind
	rm -f $(NAME).ilg
	rm -f $(NAME).fdb_latexmk
	rm -f $(NAME).idx