# Pin TeX Live 2026 for every way of building (make, LaTeX Workshop, plain latexmk).
# The Debian TeX Live 2023 in /usr/bin ships moloch 0.1.0 and biblatex 3.19, whose
# .bcf (version 3.10) the TeX Live 2026 biber rejects; mixing the two breaks biber.
my $tl = '/usr/local/texlive/2026/bin/x86_64-linux';
if (-d $tl) { $ENV{PATH} = "$tl:$ENV{PATH}"; }
$ENV{TEXMFVAR} = "$ENV{PWD}/.texmf-var" unless $ENV{TEXMFVAR};
$pdf_mode = 4;
$lualatex = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
$biber = 'biber %O %B';
