french: 
	./make-flyers.sh french

english:
	./make-flyers.sh english

spanish:
	./make-flyers.sh spanish

german:
	./make-flyers.sh german

send:
	echo 'put -f smalltalk-flyer*.pdf' | yafc free
