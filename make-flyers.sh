#! /bin/bash

# The parameter is a language (french, english...)
function compile() {
    language="$1"
    sed \
	-e 's/^\\input{.*} %%@@LANG@@$/\\input{languages\/'$language'}/' \
	-e 's/^\\usepackage\[.*\]{babel} %%@@LANG@@$/\\usepackage[english,'$language']{babel}/' \
	flyer.tex > smalltalk-flyer-$language.tex

    pdflatex smalltalk-flyer-$language.tex \
	&& pdflatex smalltalk-flyer-$language.tex
    rm -f smalltalk-flyer-$language.{tex,aux,log}
}

compile "$1"