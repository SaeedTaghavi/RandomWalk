program RandomWalk
implicit none
real::r
integer:: i,j,n,pos,max_pos,min_pos,num_non_zeros
integer , parameter::N_steps = 100,walkers=10000
integer,dimension(1:walkers)::last_position
integer, dimension(:),allocatable::num_walkers

do i =1,walkers
        pos=0
        do j=1,N_steps
                call random_number(r)
                if (r<0.5)then
                        pos=pos+1
                else if (r<1.0) then
                        pos=pos-1
                end if
        end do
        write(1,*)i,pos
        last_position(i) = pos
end do

!do i=1,walkers
!        print*,i,last_position(i)
!end do

max_pos=maxval(last_position)
min_pos=minval(last_position)
!print*,"max:",max_pos
!print*,"min:",min_pos
!print*,max_pos-min_pos+1
allocate(num_walkers(min_pos:max_pos))

num_walkers=0
do i=min_pos,max_pos
        do j=1,walkers
                if (last_position(j)==i) then 
                        num_walkers(i)=num_walkers(i)+1
                end if
        end do
        write(2,*)i,num_walkers(i)
        !print*,i,num_walkers(i)
end do
!print*,sum(num_walkers)
!num_non_zeros = count(num_walkers/=0)


end
