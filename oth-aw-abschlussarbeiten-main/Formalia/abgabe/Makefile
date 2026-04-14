# EDIT HERE!
TEXMAIN=abgabe.tex
# THAT'S IT :)

LATEXCMD = lualatex
XELATEXCMD = xelatex

BASE = $(basename $(TEXMAIN))
PDF = $(BASE).pdf

ifeq ($(BINPATH),)
BINPATH = bin
endif

TEX = $(shell find -type f -name "*.tex")
SRC = $(shell find -maxdepth 1 -type f -name "*.tex")


.PHONY: all pdf touch clean texclean check

all: hello pdf bye

hello::
	@echo "#####################################"
	@echo "### Hi, you look gorgeous today!  ###"
	@echo "#####################################"

bye::
	@echo "###########################"
	@echo "### Have a nice day :)  ###"
	@echo "###########################"

stamp:
	for sm in $(SUBMODULES); do \
	  cd $(SUBMODULE_ROOT)/$$sm; \
	  make -s; \
	  cd - >/dev/null; \
	done
	date > stamp

pdf: $(PDF)

touch:
	touch $(TEXMAIN)

clean:
	latexmk -f -c
	rm -f *.bak0 *.bak1 $(SVGPDFS) $(PDF)
	rm -rf sage-plots-for-$(TEXMAIN)

distclean: clean
	rm -v stamp

$(PDF): $(TEX)
	latexmk -$(LATEXCMD) $(TEXMAIN)

check:
	lacheck $(TEXMAIN)


