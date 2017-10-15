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
set label "a" at 600,15 tc rgb "white" font ",20" right front
set label "b" at 600,66 tc rgb "white" font ",20" right front
set label "c" at 600,117 tc rgb "white" font ",20" right front
set label "d" at 600,168 tc rgb "white" font ",20" right front

plot "optical2.jpg" binary filetype=jpg w rgbimage notitle

set lmargin at screen 0.175

#The x and y range of the population data file
set offsets 0,0,0,0
set border
set tics out nomirror scale 2
#set mxtics 5
set key left
set xtics font "Helvetica, 15"
set ytics font "Helvetica, 15"
set xlabel font ",15"
set ylabel font ",15"
set cblabel font ",15"
set cbtics font ",15"
set xlabel "x / {/Symbol m}m"
set ylabel "time / s"
set cblabel "redox potential vs. Ag/AgCl / V"
#set palette model RGB rgbformulae 7,5,15
set palette rgb 33,13,10
set cbrange [0.85:1]
splot "17101308_st.txt" using 1:2:3 with points palette pointsize 1.2 pointtype 5 notitle
unset multiplot
