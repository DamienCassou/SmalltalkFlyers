languages: french english spanish german portuguese

french: 
	./make-flyers.sh french

portuguese: 
	./make-flyers.sh portuguese

english:
	./make-flyers.sh english

spanish:
	./make-flyers.sh spanish

german:
	./make-flyers.sh german

send:
	echo 'put -f smalltalk-flyer*.pdf' | yafc free
