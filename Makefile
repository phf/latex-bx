TEX=pdflatex

bxtest.pdf: bxtest.tex
	while ($(TEX) $^ ; \
	grep -q "Rerun to get cross-references" $(basename $^).log ) do true ; \
	done

read:
	evince bxtest.pdf &

clean:
	rm -rf *.aux *.log *.toc *.pdf
