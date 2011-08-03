#! /bin/bash

# Automated source file generation


# float32 -> float32 functions 
funcs1='Acos Acosh Asin Asinh Atan  Atanh Cbrt Ceil  Cos Cosh Erf Erfc Exp Exp2 Expm1 Fabs Floor Fmax Fmin Gamma J0 J1 Log Log10 Log1p Log2 Logb Sin Sinh Sqrt Tan Tanh Trunc Y0 Y1'

for f in $funcs1; do
	file=$(echo $f | tr '[A-Z]' '[a-z]')'f'.go
	sed "s/XXXX/$f/g" template1 > $file
	#git add $file
done

# float32, float32 -> float32 functions
funcs2='Atan2 Copysign Fdim Fmin Fmax Fmod Hypot Pow'
for f in $funcs2; do
	file=$(echo $f | tr '[A-Z]' '[a-z]')'f'.go
	sed "s/XXXX/$f/g" template2 > $file
	#git add $file
done

#  Frexp Inf IsInf IsNaN Ilogb Jn Ldexp Lgamma Modf NaN Nextafter  Pow10 Remainder Signbit Sincos  Yn 
