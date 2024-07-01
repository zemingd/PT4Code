package main

import "fmt"

const MAX = 2001
const MOD = 1000000007

var fac, finv, inv [MAX]int

func cominit() {
	fac[0], fac[1] = 1, 1
	finv[0], finv[1] = 1, 1
	inv[1] = 1
	for i := 2; i < MAX; i++ {
		fac[i] = fac[i-1] * i % MOD
		inv[i] = MOD - inv[MOD%i]*(MOD/i)%MOD
		finv[i] = finv[i-1] * inv[i] % MOD
	}
}

func combination(n, k int) int {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % MOD) % MOD
}

func main() {
	cominit()

	var n, k int
	fmt.Scan(&n, &k)

	for i := 1; i <= k; i++ {
		a := combination(n-k+1, i)
		b := combination(k-1, i-1)
		fmt.Println(a * b % MOD)
	}
}
