package main

import (
	"fmt"
)

func main() {
	var (
		n int
	)

	fmt.Scan(&n)
	mochis := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&mochis[i])
	}

	count := make(map[int]int, n)
	for _, mochi := range mochis {
		count[mochi]++
	}

	fmt.Println(len(count))
}
