package main

import "fmt"

const mod = 1000000007

var fac, finv, inv []int

func initCmb(x int) {
	fac, finv, inv = make([]int, x+1), make([]int, x+1), make([]int, x+1)
	fac[0], fac[1] = 1, 1
	finv[0], finv[1] = 1, 1
	inv[1] = 1
	for i := 2; i <= x; i++ {
		fac[i] = fac[i-1] * i % mod
		inv[i] = mod - inv[mod%i]*(mod/i)%mod
		finv[i] = finv[i-1] * inv[i] % mod
	}
}

func cmb(a, b int) int {
	return fac[a] * (finv[b] * finv[a-b] % mod) % mod
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	initCmb(n)
	for i := 1; i <= k; i++ {
		fmt.Println(cmb(n-k+1, i) * cmb(k-1, i-1) % mod)
	}
}
