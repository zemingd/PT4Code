package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	n := len(s)
	ret := make([]int, n)
	i := 0
	point := 0
	for i < n {
		start := i
		for s[i] == 'R' {
			i++
		}

		for j := start; j < i; j++ {
			if (i-j)%2 == 0 {
				ret[i]++
			} else {
				ret[i-1]++
			}
		}
		ret[i]++
		point = i
		i++
		if i == n {
			break
		}
		for s[i] == 'L' {
			if (i-point)%2 == 0 {
				ret[point]++
			} else {
				ret[point-1]++
			}
			i++
			if i == n {
				break
			}
		}
	}

	for i := 0; i < n; i++ {
		fmt.Print(ret[i])
		if i != n-1 {
			fmt.Print(" ")
		}
	}
	fmt.Println("")
}
