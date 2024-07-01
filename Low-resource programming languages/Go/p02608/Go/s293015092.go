package main

import (
	"fmt"
)

func f(n int) int {
	ans := 0
	for x := 1; x < n; x++ {
		for y := 1; y < n; y++ {
			for z := 1; z < n; z++ {
				if (x*x + y*y + z*z + x*y + y*z + z*y) == n {
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
	fmt.Println(result)
}
