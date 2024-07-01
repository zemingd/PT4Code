package main

import "fmt"

const MOD = 1000000007
const MAX = 2000001

func comb(n, k int) int {
	fac  := make([]int, MAX)
	finv := make([]int, MAX)
	inv  := make([]int, MAX)
	fac[0], fac[1] = 1, 1;
	finv[0], finv[1] = 1, 1;
	inv[1] = 1;
	for i := 2; i < MAX; i++ {
		fac[i] = fac[i - 1] * i % MOD;
		inv[i] = MOD - inv[MOD % i] * (MOD / i) % MOD;
		finv[i] = finv[i - 1] * inv[i] % MOD;
	}
	
	return fac[n] * (finv[k] * finv[n - k] % MOD) % MOD;
}

func main() {
	var X, Y, ans int
	fmt.Scan(&X, &Y)
	n := (2 * Y - X) / 3
	m := (2 * X - Y) / 3;
	if (X + Y) % 3 == 0 && n >= 0 && m >= 0 {
		ans = comb(n + m, n);
	}
	fmt.Println(ans)
}