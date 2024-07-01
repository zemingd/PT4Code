package main

import (
	"fmt"
	"math"
)

func main() {

	var a, b, k uint64
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&k)

	if k >= a {
		fmt.Printf("%d %d\n", 0, (uint64)(math.Max(0, (float64)(b-(k-a)))))
	} else {
		fmt.Printf("%d %d\n", a-k, (uint64)(math.Max(0, (float64)(b-(k-a)))))
	}
}
