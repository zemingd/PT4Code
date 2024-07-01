package main

import (
	"fmt"
	"math"
)

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func min(a,b int) int {
	if a< b {
		return a
	}
	return b
}

func main() {
	var n,tmp int
	fmt.Scan(&n)
	sum := 0
	var v [100]int

	for i := 0; i< n; i++ {
		fmt.Scan(&tmp)
		sum += tmp
		v[i] = sum
	}
	mi := 1000000
	for i := 0; i< n; i++ {
		mi = min(mi, abs(v[i]-(sum-v[i])))
	}
	fmt.Println(mi)
}