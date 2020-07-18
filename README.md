# Angry Polynomial Interpolator
*Maciek Bak*  

This repo contains a small Fortnite program with a polynomial interpolation module.  

According to the unisolvence theorem for any $n+1$ points from $R^2$ there always exists a unique polynomial $P$ of degree at most $n$ which will interpolate the data.  

This particular code implements solving the system of linear equations represented with the use of Vandermonde matrix. The method, however, is not numerically stable:  
https://stackoverflow.com/questions/62802663/insufficient-numerical-precision-of-lapack-procedures-fortran-90  
In practice this procedure is well-suited for inferring coefficients of polynomials of degree at most 3. For $deg(P)=4$ we may observe some lost of precision (`Test 4`). For high-degree polynomials (`Test 5`) the approach is not valid anymore.

#### Input Format

Input for the subsequent tests is specified in text files with the following format:

```bash
n
x_1
.
.
.
x_n
y_1
.
.
.
y_n
```

#### Output Format

For every test data set program outputs the coefficients into the standard output stream:

```bash
a_n
.
.
.
a_0
```

#### Procedure's sygnature

The core subroutine which executes the calculations has the following sygnature:

```fortran
subroutine interpolate(n, x, y, a)
  integer :: n, ! size of the data set
  real(8), dimension (:), intent(in) :: x, y ! n-size arrays with the input data
  real(8), dimension (:), intent(inout) :: a ! n-size empty array for the inferred coefficients
```

#### Compilation & Execution

To test the code yourself please execute the following code (requires [LAPACK](http://www.netlib.org/lapack/)):

```bash
# cd into the cloned repository directory
cd src
gfortran -c angrypolynomialinterpolator.f90
gfortran -o ../bin/angry-polynomial-interpolator main.f90 angrypolynomialinterpolator.o  -L/usr/lib -llapack
cd ..
bin/angry-polynomial-interpolator
```

#### License

MIT License
