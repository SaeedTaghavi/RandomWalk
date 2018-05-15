set term png
set xlabel "x"
set ylabel "y"
set output "3D_grid_aligned.png"
sp 'fort.1' u 2:3:4 w l, 'fort.2' u 2:3:4 w l , 'fort.3' u 2:3:4 w l , 'fort.4' u 2:3:4 w l

