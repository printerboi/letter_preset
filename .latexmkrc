$out_dir = "./target";

$pdf_mode = 1;
$dvi_mode = 0;
$postscript_mode = 0;

@default_files = ('brief.tex');

$pdflatex = 'pdflatex -shell-escape %O %S';
