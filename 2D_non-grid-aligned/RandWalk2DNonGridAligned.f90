program RandomWalk
implicit none
real(8)::x,y,r(2)
real , parameter :: pi = 4.0d0*datan(1.0d0)
integer:: i,j
integer , parameter::N_steps = 10000
do j=1,4
x = 0. ; y=0.
	do i=1,N_steps
		call random_number(r)
		! r is an array of random numbers, each of them between [0,1) distributed uniformly
		! we use one of them for generating a random direction (turning angle)
		! and the other one for generating a random step size (step lengths) for each step
		! in our case, each step size is between [0,1), so we keep r(1) for the step size
		! and for the random direction, the random number should be between [0,2*pi), so
		r(2) = r(2) * 2.0 * pi
		x = x + r(1) * dcos(r(2))
		y = y + r(1) * dsin(r(2))
		write (j,*) x, y
	end do
end do
end
