CC=asciidoctor-pdf
CCHTML=asciidoctor
CCEPUB=asciidoctor-epub3

FILENAME=nakedcommunist.asciidoc
ORIGIN=nakedcommunist
DOCX=nakedcommunist.docx
XML=nakedcommunist.xml

all:
	$(CC) -d book -a toc -a toc-title="Mục Lục" -a figure-caption="Hình" \
	-a pdf-stylesdir=pdfstyle/themes -a pdf-style=custom -a allow-uri-read $(FILENAME)  

html:
	$(CCHTML) -a toc=left -a toc-title="Mục Lục" -a figure-caption="Hình" \
	$(FILENAME)

epub:
	$(CCEPUB) -a toc-title="Mục Lục" -a figure-caption="Hình" \
	-a allow-uri-read $(FILENAME)

docx:
	$(CC) -a toc -a toc-title="Mục Lục" --backend=docbook $(FILENAME)
	cat $(XML) | pandoc --from docbook --to docx --output $(DOCX)
clean:
	rm -f *.html
	rm -f *.pdf
	rm -f *.epub
	rm -f *.xml
	rm -f *.docx
