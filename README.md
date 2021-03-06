# Random Walk

A [random walk](https://en.wikipedia.org/wiki/Random_walk) is a mathematical object, known as a stochastic or random process, that describes a path that consists of a succession of random steps on some mathematical space such as the integers.An elementary example of a random walk is the random walk on the integer number line, which starts at 0 and at each step moves +1 or −1 with equal probability.An other example include the path traced by a molecule as it travels in a liquid or a gas.

in this repository, there are fortran codes and resuts for different random walks in 1 dimention, 2 dimentions, and 3 dimentions. In each case, there are both grid aligned and non-grid aligned random walks. notice that the grid aligned results here are only for square lattices; you can easily change the code to find the results for any other kind of latices. Also, they are normal random walks, I mean they are not self-avoiding or self-attracting. 

For one dimension walk you can find the graphs here:

| ![1-D non grid aligned](https://github.com/SaeedTaghavi/RandomWalk/blob/master/1D_non_grid_aligned/1D_non_grid_aligned.png)  | ![1-D grid aligned](https://github.com/SaeedTaghavi/RandomWalk/blob/master/1D_grid_aligned/1D_grid_aligned.png)
|:--:|:--:|
| *four 1-D non grid aligned* | *four 1-D grid aligned* |

In fact the distribution of the random walk is a binomial distribution; it is obvious in the following plots. 


| ![1-D distrubution](https://github.com/SaeedTaghavi/RandomWalk/blob/master/1D_grid_aligned/distribution/distribution3.png)  | ![1-D distribution](https://github.com/SaeedTaghavi/RandomWalk/blob/master/1D_grid_aligned/distribution/distribution2.png)
|:--:|:--:|
| *Plot of the binomial distribution for a number of steps N=100 and 1000 walkers* | *Plot of the binomial distribution for a number of steps 1000 for 1000000 walkers* |

For two dimensions walk, you can see the graphs here.

For 2-D walks, in most of the cases, the result graph is very beautiful, these graphs would help one to start studying fractals.

| ![2-D non grid aligned](https://github.com/SaeedTaghavi/RandomWalk/blob/master/2D_non-grid-aligned/2D_non-grid-aligned.png)  | ![1-D grid aligned](https://github.com/SaeedTaghavi/RandomWalk/blob/master/2D_grid_aligned/2D_grid_aligned.png)
|:--:|:--:|
| *four 2-dimension non-grid aligned random walk on a square lattice* | *four 2-dimension grid aligned random walk on a square lattice* |


| ![3-D grid aligned](https://github.com/SaeedTaghavi/RandomWalk/blob/master/3D_grid_aligned/3D_grid_aligned.png)  | 
|:--:|
| *four 3-dimension grid aligned random walk on a square lattice* |





TO DO: 
use unequal probability of a jump, for example probability of a jump to the right p = 0.6 and p= 0.8 . and check the 1-d distribution
