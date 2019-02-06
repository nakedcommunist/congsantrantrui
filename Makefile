CC=asciidoctor-pdf
CCHTML=asciidoctor
CCEPUB=asciidoctor-epub3 

all:
	$(CC) -d book -a toc -a toc-title="Mục Lục" -a figure-caption="Hình" \
	-a allow-uri-read nakedcommunist.asciidoc

html:
	$(CCHTML) -a toc=left -a toc-title="Mục Lục" -a figure-caption="Hình" \
	nakedcommunist.asciidoc

epub:
	$(CCEPUB) -a toc-title="Mục Lục" -a figure-caption="Hình" \
	-a allow-uri-read nakedcommunist.asciidoc

clean:
	rm -f *.html
	rm -f *.pdf
	rm -f *.epub
