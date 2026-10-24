# The house style needs moloch >= 2.x (TeX Live 2026); the Debian TeX Live 2023
# in /usr/bin ships moloch 0.1.0, which rejects numbering= and \molochset{block=...}.
TEXLIVE_BIN ?= /usr/local/texlive/2026/bin/x86_64-linux
export PATH := $(TEXLIVE_BIN):$(PATH)
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
