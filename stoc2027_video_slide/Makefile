LATEXMK ?= latexmk
TEXMFVAR ?= $(CURDIR)/.texmf-var
TEXMFCACHE ?= $(TEXMFVAR)
SECTIONS := $(wildcard sections/*.tex)

.PHONY: all clean

all: slide.pdf

slide.pdf: slide.tex $(SECTIONS) references.bib
	mkdir -p $(TEXMFVAR)
	TEXMFVAR=$(TEXMFVAR) TEXMFCACHE=$(TEXMFCACHE) $(LATEXMK) -lualatex -interaction=nonstopmode -halt-on-error slide.tex

clean:
	$(LATEXMK) -C slide.tex
