package main

import (
	"fmt"
)

func f(n int) int {
	ans := 0
	for x := 1; x <= n; x++ {
		p := x*x
		if p > n {
			break
		}
		for y := 1; y <= n; y++ {
			q := p + y*y + x*y
			if  q > n {
				break
			}

			for z := 1; z <= n; z++ {
				r := q + z*z + y*z + z*x
				if r > n {
					break
				}

				if r == n {
					ans++
				}
			}
		}
	}
	return ans
}

func solve(n int) []int {
	ans := make([]int, n)

	for i := 1; i <= n; i++ {
		ans[i-1] = f(i)
	}

	return ans
}

func main() {
	var N int
	fmt.Scan(&N)

	result := solve(N)
	for _, i := range result {
		fmt.Println(i)
	}
}
