# Thesis repository. Requires uv and a TeX distribution with latexmk.
#
#   make env      create .venv from uv.lock
#   make paper    build the thesis PDF        -> paper/thesis.pdf
#   make article  build the stand-alone article -> paper/article/article.pdf
#   make clean    remove LaTeX build files

.PHONY: env paper article clean

env:
	uv sync

paper:
	$(MAKE) -C paper

article:
	$(MAKE) -C paper article

clean:
	$(MAKE) -C paper clean
