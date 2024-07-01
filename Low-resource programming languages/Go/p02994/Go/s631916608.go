package main

import (
	"fmt"
	"math"
)

func main() {
	var l, n int

	fmt.Scanf("%d %d", &n, &l)

	total := 0

	for i := 0; i < n; i++ {
		total += l + i
	}

	if l == 0 || (l < 0 && math.Abs(float64(l)) < float64(n)) {
		// Nop
	} else {
		if l < 0 {
			total -= l + n - 1
		} else {
			total -= l
		}
	}

	fmt.Print(total)
}
