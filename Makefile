
SOURCE_DOC	=	manuscript.md

OUTPUT_DOCS	=\
 	$(SOURCE_DOC:.md=.pdf) \
 	$(SOURCE_DOC:.md=.docx)
 
REFERENCE_FILE = /Users/mariomueller/Dropbox (Personal)/library/bib/library.bib

PANDOC_OPTIONS 		= 
PANDOC_FILTERS		=	--citeproc
PANDOC_PDF_OPTIONS 	=	--pdf-engine=xelatex
PANDOC_DOCX_OPTIONS =


%.pdf: %.md $(REFERENCE_FILE)
	pandoc $(PANDOC_OPTIONS) $(PANDOC_FILTERS) $(PANDOC_PDF_OPTIONS) -o $@ $<

%.docx: %.md
	pandoc $(PANDOC_OPTIONS) $(PANDOC_DOCX_OPTIONS) -o $@ $<

.PHONY: all clean

all : $(OUTPUT_DOCS)
pdf : $(SOURCE_DOC:.md=.pdf)

clean:
	- rm $(OUTPUT_DOCS)