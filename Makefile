# Makefile


.PHONY: clean

Tobias_LaTeX_template_poster.pdf: Tobias_LaTeX_template_poster.tex
	pdflatex -synctex=1 -interaction=nonstopmode $<
	bibtex Tobias_LaTeX_template_poster
	pdflatex -synctex=1 -interaction=nonstopmode $<
	pdflatex -synctex=1 -interaction=nonstopmode $<

clean:
	find . -maxdepth 2 ! -name "*.bib" ! -name "*.bst" ! -name "*.dat" ! -name "*.jpg" ! -name "*.md" ! -name "*.pdf" ! -name "*.png" ! -name "*.tex" ! -name "Makefile" -type f -delete
	rm -f Tobias_LaTeX_template_poster.pdf

