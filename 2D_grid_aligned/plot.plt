set term png
set xlabel "x"
set ylabel "y"
set output "2D_grid_aligned.png"
p 'fort.1' w l, 'fort.2' w l , 'fort.3' w l , 'fort.4' w l

