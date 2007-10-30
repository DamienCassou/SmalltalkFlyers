#! /bin/bash

for language in english french german; do
    sed -e 's/^\\input{.*} %%$/\\input{'$language'}/' flyer.tex \
	> smalltalk-flyer-$language.tex
    pdflatex smalltalk-flyer-$language.tex
    pdflatex smalltalk-flyer-$language.tex
    rm -f smalltalk-flyer-$language.{tex,aux,log}
done