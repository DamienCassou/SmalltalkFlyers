#! /bin/bash

for language in english french german; do
	sed \
	    -e 's/^\\input{.*} %%@@LANG@@$/\\input{'$language'}/' \
	    -e 's/^\\usepackage\[.*\]{babel} %%@@LANG@@$/\\usepackage[english,'$language']{babel}/' \
	    flyer.tex > smalltalk-flyer-$language.tex
	pdflatex smalltalk-flyer-$language.tex \
		&& pdflatex smalltalk-flyer-$language.tex
	rm -f smalltalk-flyer-$language.{tex,aux,log}
done