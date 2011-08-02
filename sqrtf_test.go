package fmath_test

import (
	"fmath"
	"testing"
)

func TestSqrtf(t *testing.T) {
	f := fmath.Sqrtf(2)
	if f != 1.41421356237 {
		t.Fatal("Sqrtf(2):", f)
	}
}
