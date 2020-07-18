! =============================================================================
!
!   Angry Polynomial Interpolator (Procedure)
!
!   AUTHOR: Maciek_Bak
!   CONTACT: wsciekly.maciek@gmail.com
!   CREATED: 15-07-2020
!   LICENSE: MIT
!
! =============================================================================

module AngryPolynomialInterpolator

contains

subroutine interpolate(n, x, y, a)
  implicit none
  integer :: n, i, j, info
  real(8), dimension (:), intent(in) :: x, y
  real(8), dimension (:), intent(inout) :: a
  integer, dimension (:), allocatable :: ipiv
  real(8), dimension(:,:), allocatable :: Mat_X, Mat_B

  ! create the Vandermonde matrix:
  allocate(Mat_X(n,n))
  do i = 1,n
    do j = 1,n
      Mat_X(i,j) = x(i) ** (j - 1)
    end do
  end do

  ! reshape ipnut data into a matrix form:
  allocate (Mat_B(n,1))
  do i = 1,n
    Mat_B(i,1) = y(i)
  end do

  ! prepare an array for the pivot indices from DGETRF:
  allocate(ipiv(n))

  ! LAPACK:
  ! compute an LU factorization of a general M-by-N matrix A using
  ! partial pivoting with row interchanges
  ! http://sites.science.oregonstate.edu/~landaur/nacphy/lapack/routines/dgetrf.html
  call DGETRF(n, n, Mat_X, n, ipiv, info)

  ! LAPACK:
  ! DGETRS - solve a system of linear equations A * X = B or A' * X = B with a
  ! general N-by-N matrix A using the LU factorization computed by DGETRF
  ! http://sites.science.oregonstate.edu/~landaur/nacphy/lapack/routines/dgetrs.html
  call DGETRS("N", n, 1, Mat_X, n, ipiv, Mat_B, n, info)

  ! save the results into the argument array
  do i = 1,n
    a(i) = Mat_B(i,1)
  end do

  deallocate(ipiv)
  deallocate(Mat_X)
  deallocate(Mat_B)

end subroutine interpolate

end module AngryPolynomialInterpolator
