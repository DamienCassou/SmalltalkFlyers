#! /bin/bash

# The parameter is a language (french, english...)
function compile() {
    language="$1"
    if test "$2" = "" ; then
        babel_package=$language
    else
        babel_package="$2"
    fi

    sed \
        -e 's/^\\input{.*} %%@@LANG@@$/\\input{languages\/'$language'}/' \
        -e 's/^\\usepackage\[.*\]{babel} %%@@LANG@@$/\\usepackage[english,'$babel_package']{babel}/' \
        flyer.tex > smalltalk-flyer-$language.tex

    pdflatex smalltalk-flyer-$language.tex \
        && pdflatex smalltalk-flyer-$language.tex
    rm -f smalltalk-flyer-$language.{tex,aux,log}
}

compile "$@"
