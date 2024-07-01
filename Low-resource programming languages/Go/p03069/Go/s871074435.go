package main

import (
	"fmt"
)

func min(n1, n2 int) int {
	if n1 < n2 {
		return n1
	} else {
		return n2
	}
}

func main() {
	var (
		n int
		s string
	)
	fmt.Scan(&n, &s)

	count1 := 0
	for i := 0; i < n-1; i++ {
		if s[i] == '#' {
			count1++
		}
	}
	count2 := 0
	for i := 0; i < n-1; i++ {
		if s[i] == '#' {
			for j := i + 1; j < n; j++ {
				if s[j] == '.' {
					count2++
				}
			}
		}
	}
	fmt.Println(min(count1, count2))
}
