package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	wcnt := make([]int, n)
	for i := 0; i < n; i++ {
		if i == 0 {
			wcnt[i] = 0
		} else {
			wcnt[i] += wcnt[i-1]
		}
		if s[i] == 'W' {
			wcnt[i]++
		}
	}
	min := math.MaxInt32
	for i := 0; i < n; i++ {
		cnt := 0
		if i > 0 {
			cnt += wcnt[i-1]
		}
		if i < n-1 {
			cnt += (n - i - 1) - (wcnt[n-1] - wcnt[i])
		}
		if cnt < min {
			min = cnt
		}
	}

	fmt.Println(min)
}
