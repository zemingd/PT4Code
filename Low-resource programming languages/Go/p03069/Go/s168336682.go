package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&s)

	mins := make([]int, n)
	for i := 0; i < n; i++ {
		if s[i] == '.' {
			for j := 0; j < i; j++ {
				mins[j]++
			}
		} else {
			for j := i; j < n; j++ {
				mins[j]++
			}
		}
	}

	min := mins[0]
	for i := 1; i < n; i++ {
		if mins[i] < min {
			min = mins[i]
		}
	}

	fmt.Println(min)
}
