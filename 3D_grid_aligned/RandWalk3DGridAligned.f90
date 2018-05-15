program RandomWalk
implicit none
real(8)::x,y,z,r
real , parameter :: pi = 4.0d0*datan(1.0d0)
integer:: i,j
integer , parameter::N_steps = 1000
do j=1,4
x = 0. ; y=0. ; z = 0.
	do i=1,N_steps
		call random_number(r)
		! r is a random number between [0,1) distributed uniformly
		! in our case, grid aligned random walk, the step lengths are fixed, and equal to 1
		! we just need one random number to generate the direction for the next step,
		! in 3 dimension we have 6 direction, top, down, right, left, front, behind
		! simply by placing a condition over that random number
		if ( r < 1.0/6.0 ) then
		    x = x + 1.0
		else if ( r < 2.0/6.0 ) then
		    x = x - 1.0
		else if ( r < 3.0/6.0 ) then
		    y = y + 1.0
		else if ( r < 4.0/6.0 ) then
		    y = y - 1.0
		else if ( r < 5.0/6.0 ) then
		    z = z + 1.0
		else if ( r < 6.0/6.0 ) then
		    z = z - 1.0
		end if
		write (j,*) i, x, y ,z
	end do
end do
end
