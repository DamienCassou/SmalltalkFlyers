How translation is working
--------------------------

Each langage is defined in its own LaTeX file (french.tex and
english.tex for example). These files define commands which represent
text.

To define a new language, copy english.tex into <yourlanguage>.tex and
translate the different texts.

Once this is done, you must input your file from the main LaTeX file
in place of the input for another langage. For example, if flyer.tex
have a line like '\input{english}', replace it by
'\input{<yourlanguage>}'.

You may also want to add the babel extension for you language. You
must let the english extension in place because it is used by the
'\code' command.

