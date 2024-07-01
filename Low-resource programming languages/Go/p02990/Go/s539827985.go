package main

import "fmt"

const mod = 1000000007

func cmb(x, y int) int {
	if y > x {
		return 0
	}
	ans := 1
	for i := 1; i <= y; i++ {
		ans *= x - i + 1
		ans /= i
		ans = ans % mod
	}
	return ans
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	for i := 1; i <= k; i++ {
		fmt.Println(cmb(n-k+1, i) * cmb(k-1, i-1) % mod)
	}
}
