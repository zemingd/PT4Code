package main

import "fmt"

const mod = 1000000007

func cmb(x, y uint64) uint64 {
	if y > x {
		return 0
	}
	ans := uint64(1)
	for i := uint64(1); i <= y; i++ {
		ans *= x - i + 1
		ans /= i
		ans %= mod
	}
	return ans
}

func main() {
	var n, k uint64
	fmt.Scan(&n, &k)

	for i := uint64(1); i <= k; i++ {
		fmt.Println(cmb(n-k+1, i) * cmb(k-1, i-1) % mod)
	}
}
