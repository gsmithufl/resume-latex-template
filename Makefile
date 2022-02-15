# Suppress errors from check.sh
CI ?=0

all: resume cover clean

resume:
	pdflatex -halt-on-error resume.tex

cover:
	pdflatex -halt-on-error cover_letter.tex
	./check.sh

clean:
	rm *.aux *.fdb_latexmk *.fls *.log *.synctex.gz
