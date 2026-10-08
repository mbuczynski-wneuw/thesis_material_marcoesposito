# Build the thesis. Requires a TeX distribution with latexmk.
#   make           thesis                      -> thesis.pdf
#   make article   stand-alone article         -> article/article.pdf
#   make clean     remove build files

LATEXMK = latexmk -pdf -interaction=nonstopmode -halt-on-error

.PHONY: thesis article article-thesis clean

thesis: article-thesis
	$(LATEXMK) thesis.tex

article:
	cd article && $(LATEXMK) article.tex

# Article without page numbers, included in the article-form thesis.
article-thesis:
	cd article && $(LATEXMK) -jobname=article-thesis -usepretex='\def\thesisbuild{}' article.tex

clean:
	latexmk -C thesis.tex
	cd article && latexmk -C article.tex && latexmk -C -jobname=article-thesis article.tex
