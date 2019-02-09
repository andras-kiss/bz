reset
set size ratio 1.5
set term postscript enhanced color
set view map
set out "spacetime.eps"
set multiplot
set xrange [0:10000] 
set yrange [0:306]
unset tics
unset border
set lmargin at screen 0.363
set rmargin at screen 0.9
set bmargin at screen 0.15
set tmargin at screen 0.9
#Plot the background image
set offsets 0, 0,0,0
set label "1" at 9600,40 tc rgb "white" font ",20" right front
set label "2" at 9600,65 tc rgb "white" font ",20" right front
set label "3" at 9600,88 tc rgb "white" font ",20" right front
set label "4" at 9600,102 tc rgb "white" font ",20" right front
set label "5" at 9600,115 tc rgb "white" font ",20" right front
set label "6" at 9600,150 tc rgb "white" font ",20" right front
set label "7" at 9600,192 tc rgb "white" font ",20" right front
set label "8" at 9600,213 tc rgb "white" font ",20" right front
set label "9" at 9600,243 tc rgb "white" font ",20" right front
set label "10" at 9600,255 tc rgb "white" font ",20" right front
set label "11" at 9600,269 tc rgb "white" font ",20" right front
set label "12" at 9600,298 tc rgb "white" font ",20" right front
set label "13" at 7200,298 tc rgb "white" font ",20" right front
set label "14" at 900,290 tc rgb "white" font ",20" right front

#set label "c" at 600,155 tc rgb "white" font ",20" right front
#set label "d" at 600,168 tc rgb "white" font ",20" right front

plot "optical2.jpg" binary filetype=jpg w rgbimage notitle

set lmargin at screen 0.175

#The x and y range of the population data file
set offsets 0,0,0,0
set border
set tics out nomirror scale 2
#set mxtics 5
set key left
set xtics font "Helvetica, 18"
set ytics font "Helvetica, 18"
set xlabel font ",18"
set ylabel font ",18"
set cblabel font ",18"
set cbtics font ",18"
set xlabel "x / cm"
set ylabel "time / s"
set cblabel "redox potential vs. Ag/AgCl / V"
#set palette model RGB rgbformulae 7,5,15
set palette rgb 33,13,10
set cbrange [0.85:1]
set xrange [0:1]
set cblabel offset 1,0
set ylabel offset -1,0
set xlabel offset 0,0 
splot "17101308_st.txt" using ($1/10000):2:3 with points palette pointsize 1.2 pointtype 5 notitle
unset multiplot
