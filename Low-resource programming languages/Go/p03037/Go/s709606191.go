package main

import (
	"fmt"
	"math"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	var ll, rr int
	rr = math.MaxInt32
	for i := 0; i < m; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		if l > ll {
			ll = l
		}
		if r < rr {
			rr = r
		}
	}
	fmt.Println(rr - ll + 1)
}
