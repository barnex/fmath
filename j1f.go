// Copyright 2011 Arne Vansteenkiste. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package fmath

import "math"

// float32 J1f
func J1f(x float32) float32 {
	return float32(math.J1(float64(x)))
}
