package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, C, min, tmp float64
	fmt.Scan(&A, &B, &C)

	min = math.Abs(A-B) + math.Abs(B-C)
	tmp = math.Abs(A-C) + math.Abs(C-B)
	if min > tmp {
		min = tmp
	}
	tmp = math.Abs(B-A) + math.Abs(A-C)
	if min > tmp {
		min = tmp
	}
	tmp = math.Abs(B-C) + math.Abs(C-A)
	if min > tmp {
		min = tmp
	}
	tmp = math.Abs(C-A) + math.Abs(A-B)
	if min > tmp {
		min = tmp
	}
	tmp = math.Abs(C-B) + math.Abs(B-A)
	if min > tmp {
		min = tmp
	}

	fmt.Print(min)
}