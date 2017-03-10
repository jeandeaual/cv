$pdf_mode = 1;
$dvi_mode = $postscript_mode = 0;
$pdflatex = 'lualatex -synctex=1 -shell-escape %O %S';
@default_files = ('main.tex');

$clean_ext .= ' synctex.gz(busy)';
