package main

import (
	"fmt"
)

var fac, finv, inv []int

const MOD = 1000000007

func cominit(n int) {
	fac, finv, inv = make([]int, n+1), make([]int, n+1), make([]int, n+1)
	fac[0], fac[1] = 1, 1
	finv[0], finv[1] = 1, 1
	inv[1] = 1
	for i := 2; i < n+1; i++ {
		fac[i] = fac[i-1] * i % MOD
		inv[i] = MOD - inv[MOD%i]*(MOD/i)%MOD
		finv[i] = finv[i-1] * inv[i] % MOD
	}
}

func com(n, k int) int {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % MOD) % MOD
}

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	if (x+y)%3 != 0 {
		fmt.Println(0)
		return
	}

	// (+1, +2)の移動回数: n
	// (+2, +1)の移動回数: mとすると、
	// n + 2m = x
	// 2n + m = y
	// -> 3n + 3m = x + y
	// -> n + m = (x + y) / 3
	n, m := -1, -1
	k := (x + y) / 3
	for i := 0; i <= k; i++ {
		if i+2*(k-i) == x && 2*i+(k-i) == y {
			n, m = i, k-i
		}
	}

	if n == -1 || m == -1 {
		fmt.Println(0)
		return
	}

	cominit(n + m)
	fmt.Println(com(n+m, n))
}
