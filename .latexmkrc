$pdf_mode = 1;
$dvi_mode = $postscript_mode = 0;
$pdflatex = 'lualatex -synctex=1 %O %S';

$clean_ext .= ' synctex.gz(busy)';
