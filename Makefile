SHELL=/bin/bash
NAME=uibeamernew
VERSION=0.1
DISTDIR=$(NAME)
ARCHIVE_NAME=/tmp/$(NAME)-$(VERSION)
SAMPLES=sample.pdf
DISTFILES=beamerthemeUsherNew.sty beamernotes.sty Makefile README.txt README *.tex *.pdf *.svgz

all: pdf

ps: $(NAME).ps

%.ps: %.dvi
	dvips $(DVIPSOPT) $< -o $@

pdf: $(SAMPLES) $(DEP)

%.pdf: %.tex
	pdflatex $<

dist: $(DISTFILES)
	rm -rf $(DISTDIR)
	mkdir $(DISTDIR)
	cp -aL --parents $(DISTFILES) $(DISTDIR)
	tar cfvz $(ARCHIVE_NAME).tgz $(DISTDIR)
	rm -rf $(DISTDIR)

distzip: $(DISTFILES)
	rm -rf $(DISTDIR)
	mkdir $(DISTDIR)
	cp -aL --parents $(DISTFILES) $(DISTDIR)
	zip -r $(ARCHIVE_NAME).zip $(DISTDIR)
	rm -rf $(DISTDIR)

clean: 
	rm -f $(NAME).{glo,log,toc,lot,lof,idx,ilg,ind,aux,blg,bbl,dvi}
	rm -f *~
