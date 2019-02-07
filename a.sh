./a.out
gnuplot plot

#ls *.eps > eps_files
#for i in $(cat eps_files)
#do
#   ps2pdf $i
#done

pdflatex -shell-escape bz.tex
bibtex bz
pdflatex -shell-escape bz.tex
pdflatex -shell-escape bz.tex

#./clean.sh
