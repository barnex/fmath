// Copyright 2011 Arne Vansteenkiste. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package fmath

import "math"

// float32 Coshf
func Coshf(x float32) float32 {
	return float32(math.Cosh(float64(x)))
}
