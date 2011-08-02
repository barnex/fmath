// Copyright 2011 Arne Vansteenkiste. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// "Portable" implementations of float32 math functions,
// using the standard float64 math library underneath.
// these implementations can be replaced by faster assembly
// code when needed.

package fmath

import "math"


// Sqrtf returns the square root of x.
//
// Special cases:
//	Sqrtf(+Inf) = +Inf
//	Sqrtf(±0) = ±0
//	Sqrtf(x < 0) = NaN
//	Sqrtf(fNaN) = NaN
func Sqrtf(x float32) float32 {
	return float32(math.Sqrt(float64(x)))
}
