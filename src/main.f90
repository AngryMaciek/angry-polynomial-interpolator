! =============================================================================
!
!   Angry Polynomial Interpolator (Main)
!
!   AUTHOR: Maciek_Bak
!   CONTACT: wsciekly.maciek@gmail.com
!   CREATED: 15-07-2020
!   LICENSE: MIT
!
! =============================================================================

program AngryPolynomialInterpolator_MAIN
use AngryPolynomialInterpolator
implicit none

  ! ===========================================================================
  ! TYPE:
  integer :: line, n
  ! store input data in double-precision reals
  real(8), dimension(:), allocatable :: in1_x, in1_y, in1_a
  character(len=5) :: linesep
  character(len=20) :: str

  ! ===========================================================================
  ! EXEC:
  linesep = "====="
  write(*,"(a)") adjustl(trim(linesep))

  ! Test1
  ! =====
  open(1, &
    file="test/test1_input.txt", &
    status="old", &
    action="read", &
    form="formatted" &
  )
    ! read the number of data points:
    read(1,*) n
    ! allocate memory for the input data
    allocate(in1_x(n))
    allocate(in1_y(n))
    allocate(in1_a(n))
    ! read the x_i coordinates:
    do line = 1,n
      read(1,*) in1_x(line)
    end do
    ! read the y_i coordinates:
    do line = 1,n
      read(1,*) in1_y(line)
    end do
  close(1)
  ! call the interpolating procedure:
  call interpolate(n, in1_x, in1_y, in1_a)
  ! print out calculated coefficients:
  do line = 1,n
    write(str,"(F20.10)") in1_a(n + 1 - line)
    write(*,"(a)") adjustl(trim(str))
  end do
  ! free the allocated memory
  deallocate(in1_x)
  deallocate(in1_y)
  deallocate(in1_a)
  write(*,"(a)") adjustl(trim(linesep))

  ! Test2
  ! =====
  open(2, &
    file="test/test2_input.txt", &
    status="old", &
    action="read", &
    form="formatted" &
  )
    ! read the number of data points:
    read(2,*) n
    ! allocate memory for the input data
    allocate(in1_x(n))
    allocate(in1_y(n))
    allocate(in1_a(n))
    ! read the x_i coordinates:
    do line = 1,n
      read(2,*) in1_x(line)
    end do
    ! read the y_i coordinates:
    do line = 1,n
      read(2,*) in1_y(line)
    end do
  close(2)
  ! call the interpolating procedure:
  call interpolate(n, in1_x, in1_y, in1_a)
  ! print out calculated coefficients:
  do line = 1,n
    write(str,"(F20.10)") in1_a(n + 1 - line)
    write(*,"(a)") adjustl(trim(str))
  end do
  ! free the allocated memory
  deallocate(in1_x)
  deallocate(in1_y)
  deallocate(in1_a)
  write(*,"(a)") adjustl(trim(linesep))

  ! Test3
  ! =====
  open(3, &
    file="test/test3_input.txt", &
    status="old", &
    action="read", &
    form="formatted" &
  )
    ! read the number of data points:
    read(3,*) n
    ! allocate memory for the input data
    allocate(in1_x(n))
    allocate(in1_y(n))
    allocate(in1_a(n))
    ! read the x_i coordinates:
    do line = 1,n
      read(3,*) in1_x(line)
    end do
    ! read the y_i coordinates:
    do line = 1,n
      read(3,*) in1_y(line)
    end do
  close(3)
  ! call the interpolating procedure:
  call interpolate(n, in1_x, in1_y, in1_a)
  ! print out calculated coefficients:
  do line = 1,n
    write(str,"(F20.10)") in1_a(n + 1 - line)
    write(*,"(a)") adjustl(trim(str))
  end do
  ! free the allocated memory
  deallocate(in1_x)
  deallocate(in1_y)
  deallocate(in1_a)
  write(*,"(a)") adjustl(trim(linesep))

  ! Test4
  ! =====
  open(4, &
    file="test/test4_input.txt", &
    status="old", &
    action="read", &
    form="formatted" &
  )
    ! read the number of data points:
    read(4,*) n
    ! allocate memory for the input data
    allocate(in1_x(n))
    allocate(in1_y(n))
    allocate(in1_a(n))
    ! read the x_i coordinates:
    do line = 1,n
      read(4,*) in1_x(line)
    end do
    ! read the y_i coordinates:
    do line = 1,n
      read(4,*) in1_y(line)
    end do
  close(4)
  ! call the interpolating procedure:
  call interpolate(n, in1_x, in1_y, in1_a)
  ! print out calculated coefficients:
  do line = 1,n
    write(str,"(F20.10)") in1_a(n + 1 - line)
    write(*,"(a)") adjustl(trim(str))
  end do
  ! free the allocated memory
  deallocate(in1_x)
  deallocate(in1_y)
  deallocate(in1_a)
  write(*,"(a)") adjustl(trim(linesep))

  ! Test5
  ! =====
  open(5, &
    file="test/test5_input.txt", &
    status="old", &
    action="read", &
    form="formatted" &
  )
    ! read the number of data points:
    read(5,*) n
    ! allocate memory for the input data
    allocate(in1_x(n))
    allocate(in1_y(n))
    allocate(in1_a(n))
    ! read the x_i coordinates:
    do line = 1,n
      read(5,*) in1_x(line)
    end do
    ! read the y_i coordinates:
    do line = 1,n
      read(5,*) in1_y(line)
    end do
  close(5)
  ! call the interpolating procedure:
  call interpolate(n, in1_x, in1_y, in1_a)
  ! print out calculated coefficients:
  do line = 1,n
    write(str,"(F20.10)") in1_a(n + 1 - line)
    write(*,"(a)") adjustl(trim(str))
  end do
  ! free the allocated memory
  deallocate(in1_x)
  deallocate(in1_y)
  deallocate(in1_a)
  write(*,"(a)") adjustl(trim(linesep))

  ! ===========================================================================

end program AngryPolynomialInterpolator_MAIN
