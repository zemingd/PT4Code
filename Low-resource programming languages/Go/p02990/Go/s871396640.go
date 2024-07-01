package main

import "fmt"

const mod = 1000000007

func cmb(a, b int) int {
	if a == 0 || b == 0 {
		return 1
	}

	ans := 1
	for i := 1; i <= b; i++ {
		ans *= (a - i + 1)
		ans /= i
		ans %= mod
	}
	return ans
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	for i := 1; i <= k; i++ {
		fmt.Println(cmb(n-k+1, i) * cmb(k-1, i-1) % mod)
	}
	fmt.Println(cmb(10, 9))
}
