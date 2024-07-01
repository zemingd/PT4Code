package main

import (
	"fmt"
)

const MAX = 3000000
const MOD = 1000000007

var (
	fac  [MAX]int64
	finv [MAX]int64
	inv  [MAX]int64
)

func init() {
	fac[0], fac[1] = 1, 1
	finv[0], finv[1] = 1, 1
	inv[1] = 1
	for i := int64(2); i < MAX; i++ {
		fac[i] = fac[i-1] * i % MOD
		inv[i] = MOD - inv[MOD%i]*(MOD/i)%MOD
		finv[i] = finv[i-1] * inv[i] % MOD
	}
}

func COM(n, k int) int64 {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return fac[n] * (finv[k] * finv[n-k] % MOD) % MOD
}
func main() {
	var X, Y int
	fmt.Scanf("%d %d\n", &X, &Y)

	if (X+Y)%3 != 0 {
		fmt.Println(0)
		return
	}
	m := (2*X - Y) / 3
	n := (2*Y - X) / 3
	if m < 0 || n < 0 {
		fmt.Println(0)
		return
	}

	fmt.Println(COM(m+n, m))
}
