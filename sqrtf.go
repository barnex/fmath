// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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
