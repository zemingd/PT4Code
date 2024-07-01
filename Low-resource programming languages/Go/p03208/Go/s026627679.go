package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	h := make([]int, n)
	for i := range h {
		fmt.Scan(&h[i])
	}

	sort.Ints(h)
	min := int(10e9)
	for i:=0;i<n-k+1;i++ {
		min = int(math.Min(float64(h[i+k-1] - h[i]), float64(min)))
	}
	fmt.Println(min)
}