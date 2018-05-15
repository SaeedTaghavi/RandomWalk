set term png
set output "2D_non-grid-aligned.png"
set xlabel "x"
set ylabel "y"
p 'fort.1' w l, 'fort.2' w l , 'fort.3' w l , 'fort.4' w l

