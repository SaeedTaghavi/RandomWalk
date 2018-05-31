set term png
set title "Distribution of the final location of a set of random walks for n=10000 and 100 steps"
set xlabel "Final Location of the Walker"
set ylabel "Frequency / Number of Walkers"
set output "distribution.png"
p 'fort.2' w p pt 5 lc -1

