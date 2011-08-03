#! /bin/bash
funcs='Acos Acosh Asin Asinh Atan Atan2 Atanh Cbrt Ceil Copysign Cos Cosh Erf Erfc Exp Exp2 Expm1 Fabs Fdim Float32bits Float32frombits Float64bits Float64frombits Floor Fmax Fmin Fmod Frexp Gamma Hypot Ilogb Inf IsInf IsNaN J0 J1 Jn Ldexp Lgamma Log Log10 Log1p Log2 Logb Modf NaN Nextafter Pow Pow10 Remainder Signbit Sin Sincos Sinh Sqrt Tan Tanh Trunc Y0 Y1 Yn'

for f in $funcs; do
		file=$(echo $f | tr '[A-Z]' '[a-z]')
	sed "s/XXXX/$f/g" template > $file.go
done
