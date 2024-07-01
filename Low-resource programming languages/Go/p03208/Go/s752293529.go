package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	sort.Ints(ar)
	min := 2000000000
	for i := k - 1; i < n; i++ {
		diff := ar[i] - ar[i-k+1]
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}
