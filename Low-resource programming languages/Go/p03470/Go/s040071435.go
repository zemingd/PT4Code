package main

import (
	"fmt"
)

func main() {
	mochis := make([]int, 101)
	count := make(map[int]int)
	var (
		n int
	)

	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&mochis[i])
	}

	for _, mochi := range mochis {
		count[mochi]++
	}

	fmt.Println(len(count))
}
