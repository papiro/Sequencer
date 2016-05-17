!  Character (len=20) :: arg ! 
!  call get_command_argument(1, arg)
!  read (arg, *) limit

program nacci
implicit none
  Integer*1 :: limit = 20
  call make_space (limit)
end program nacci

subroutine make_space (limit)
  Integer*1 , Intent (in) :: limit
  Integer, Dimension (limit) :: fib_nums
  Integer*1 :: ite = 3
  fib_nums(1) = 0
  print*, fib_nums(1)
  fib_nums(2) = 1
  print*, fib_nums(2)

  do while (ite .NE. limit)
    fib_nums(ite) = fib_nums(ite-1) + fib_nums(ite-2)
    print*, fib_nums(ite)
    ite = ite + 1
  enddo
end subroutine make_space
