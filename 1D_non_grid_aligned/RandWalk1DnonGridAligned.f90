program RandomWalk
implicit none
real(8)::x,y,r(2)
real , parameter :: pi = 4.0d0*datan(1.0d0)
integer:: i,j
integer , parameter::N_steps = 10000
do j=1,4
x = 0.
	do i=1,N_steps
		call random_number(r)
		! r is an array of random numbers, each of them between [0,1) distributed uniformly
		! we use one of them for generating a random direction (turning angle), which could be only right and left
		! and the other one for generating a random step size (step lengths) for each step
		! in our case, each step size is between [0,1), so we keep r(1) for the step size
		! and for the random direction, we can do it simply by placing a condition over the rndom number
		if ( r(2) < 0.5) then
		    x = x + r(1)
		else if ( r(2) < 1.0 ) then
		    x = x - r(1)
		end if
		write (j,*) i , x
	end do
end do
end
