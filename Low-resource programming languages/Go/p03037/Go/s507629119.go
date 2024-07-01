package main

import (
	"fmt"
	"math"
)

func main() {
	var m, n int
	fmt.Scan(&m, &n)
	lmax, rmin := 0, math.MaxInt32
	for i := 0; i < n; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		if l > lmax {
			lmax = l
		}
		if r < rmin {
			rmin = r
		}
	}
	if lmax <= rmin{
		fmt.Println(rmin - lmax + 1)
	} else {
		fmt.Println(0)
	}
}