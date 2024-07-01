package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	listB := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&listB[i])
	}
	result := 0
	result += listB[0]
	for i := 1; i < n-1; i++ {
		if listB[i-1] < listB[i] {
			result += listB[i-1]
		} else {
			result += listB[i]
		}
	}
	result += listB[n-2]
	fmt.Println(result)

}
