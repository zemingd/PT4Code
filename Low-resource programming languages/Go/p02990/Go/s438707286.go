package main

import "fmt"

func cmb(a, b int) int {
	ans := 1
	for i := 1; i <= b; i++ {
		ans *= (a - i + 1)
		ans /= i
	}
	return ans
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	for i := 1; i <= k; i++ {
		fmt.Println(cmb(n-k+1, i) * cmb(k-1, i-1))
	}
}
