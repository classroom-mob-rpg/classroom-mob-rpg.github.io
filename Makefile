all: clean build/handout.pdf build/markdown

clean:
	rm -rf build

build:
	mkdir -p build

build/roles.pdf: build src/roles.tex
	mkdir -p build
	pdflatex -output-directory build src/roles.tex

build/handout.pdf: build/roles.pdf
	cp build/roles.pdf /tmp
	pdfxup -x 2 -y 2 -ow -kbb --portrait -o build/handout.pdf -ps letter /tmp/roles.pdf
	rm /tmp/roles.pdf

build/markdown: build src/*md
	cp src/*md build
	cp src/_config.yml build
