set term png
set xlabel "step number"
set ylabel "x"
set output "1D_non_grid_aligned.png"
p 'fort.1' w l, 'fort.2' w l , 'fort.3' w l , 'fort.4' w l

