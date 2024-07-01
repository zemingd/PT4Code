package main

import (
	"fmt"
)

func main() {
	var K, X int
	fmt.Scan(&K, &X)

	min := 1000000 * -1
	max := 1000000

	var stones []int
	for i := X - (K - 1); i < X+(K-1); i++ {
		if i >= min || i <= max {
			stones = append(stones, i)
		}
	}

	for i := range stones {
		fmt.Print(stones[i])
		fmt.Print(" ")
	}
}
