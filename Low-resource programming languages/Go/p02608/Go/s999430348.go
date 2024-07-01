package main

import (
	"fmt"
)

func f(n int) int {
	ans := 0
	for x := 1; (x*x) < n; x++ {
		xx := x*x
		if xx > n {
			continue
		}
		for y := 1; (y*y) < n; y++ {
			yy := y * y
			if yy > n {
				continue
			}
			xy := x*y
			if xy > n {
				continue
			}

			for z := 1; (z*z) < n; z++ {
				zz := z*z
				if zz > n {
					continue
				}
				yz := y * z
				if yz > n {
					continue
				}

				if (xx + yy + zz + xy + yz + z*x) == n {
					ans++
				}
			}
		}
	}
	return ans
}

func solve(n int) []int {
	ans := make([]int, n)

	for i := 1; i < n; i++ {
		ans = append(ans, f(i))
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
