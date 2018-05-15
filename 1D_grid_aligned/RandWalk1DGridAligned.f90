program RandomWalk
implicit none
real(8)::x,r
real , parameter :: pi = 4.0d0*datan(1.0d0)
integer:: i,j
integer , parameter::N_steps = 10000
do j=1,4
	x = 0.
	do i=1,N_steps
		call random_number(r)
		! r is a random number between [0,1) distributed uniformly
		! in our case, grid aligned random walk, the step lengths are fixed, and equal to 1
		! we just need one random number to generate the direction for the next step, right or left
		! simply by placing a condition over that random number
		if ( r < 0.5 ) then
		    x = x + 1.0
		else if ( r < 1.0 ) then
		    x = x - 1.0
		end if
		write (j,*) i , x
	end do
end do
end
