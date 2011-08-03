// Copyright 2011 Arne Vansteenkiste. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package fmath

import "math"

// float32 Truncf
func Truncf(x float32) float32 {
	return float32(math.Trunc(float64(x)))
}
