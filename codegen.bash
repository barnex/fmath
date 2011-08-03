#! /bin/bash
funcs='Acos Acosh Asin Asinh Atan  Atanh Cbrt Ceil  Cos Cosh Erf Erfc Exp Exp2 Expm1 Fabs Floor Fmax Fmin Gamma J0 J1 Log Log10 Log1p Log2 Logb Sin Sinh Sqrt Tan Tanh Trunc Y0 Y1'

for f in $funcs; do
	file=$(echo $f | tr '[A-Z]' '[a-z]')'f'.go
	sed "s/XXXX/$f'f'/g" template > $file
	rm $file
done


#Atan2 Copysign Fdim Fmod Frexp Hypot Inf IsInf IsNaN Ilogb Jn Ldexp Lgamma Modf NaN Nextafter Pow Pow10 Remainder Signbit Sincos  Yn
