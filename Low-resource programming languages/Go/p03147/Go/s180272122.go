package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	hs := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&hs[i])
	}

	result := 0
	for {
		start := 0
		isAllZero := false
		for i, h := range hs {
			if h != 0 {
				start = i
				break
			}
			if i == n-1 {
				isAllZero = true
			}
		}

		if isAllZero {
			break
		}

		end := n - 1
		start++
		for i := start; i < n; i++ {
			if hs[i] == 0 {
				end = i - 1
				break
			}
		}

		for i := start; i <= end; i++ {
			hs[i]--
		}

		result++
	}

	fmt.Println(result)
}
