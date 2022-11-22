all: handout.pdf

roles.pdf: roles.tex
	pdflatex roles.tex

handout.pdf: roles.pdf
	pdfxup -x 2 -y 2 -ow -kbb --portrait -o handout.pdf roles.pdf
