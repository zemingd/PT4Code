package main

import (
	"fmt"
	"math"
)

func main() {
	var n float64
	var a, b, c, d, e int64
	fmt.Scan(&n, &a, &b, &c, &d, &e)

	var caps = []int64{a, b, c, d, e}
	var bn int64 = math.MaxInt64

	for _, c := range caps {
		if c < bn {
			bn = c
		}
	}

	fmt.Println(int(math.Ceil(n/float64(bn))) + 4)
}
