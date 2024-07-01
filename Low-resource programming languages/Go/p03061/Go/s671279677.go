package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	ret := 0
	for i := 0; i < n; i++ {
		maxDivisible := 0
		for j := 0; j < n; j++ {
			if j == i {
				continue
			}
			if maxDivisible == 0 {
				maxDivisible = a[j]
			} else {
				maxDivisible = max(maxDivisible, a[j])
			}
		}

		if maxDivisible > ret {
			ret = maxDivisible
		}
	}

	fmt.Println(ret)
}

func max(a int, b int) int {
	for {
		if b > a {
			a, b = b, a
		}
		c := a % b
		if c == 0 {
			return b
		}
		a, b = b, c
	}
}
