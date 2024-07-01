package main

import (
	"fmt"
)

func main() {
	var n, k int
	n = 0
	k = 0
	fmt.Scan(&n, &k)

	a := make([]int, n)

	for i := range a {
		fmt.Scan(&a[i])
	}

	start := 0

	for i := 0; i < k; i++ {
		start = a[start] - 1
		fmt.Println(i)
	}

	fmt.Println(start + 1)

}


