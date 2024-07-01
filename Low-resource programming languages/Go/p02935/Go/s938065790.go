package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	vals := make([]int, n)
	for i := range vals {
		var x int
		fmt.Scanf("%d", &x)

		vals[i] = x
	}

	sort.Ints(vals)

	sum := float64(vals[0])
	for i := 1; i < len(vals); i++ {
		sum += float64(vals[i])
		sum /= 2
	}

	fmt.Println(sum)
}
