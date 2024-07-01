package main

import (
	"fmt"
	"math"
)

func main() {
	MOD := int(math.Pow10(9) + 7)
	var N, K int
	fmt.Scan(&N, &K)

	inv := make([]int, N+1)
	for i := 1; i <= N; i++ {
		inv[i] = modinv(i, MOD)
	}

	for i := 1; i <= K; i++ {
		ans := (comb(N-K+1, i, MOD, inv) * comb(K-1, i-1, MOD, inv)) % MOD
		fmt.Println(ans)
	}
}

// ax + by = 1を満たす(x,y)を求める = mod b でのaの逆元xを求める
func modinv(a, mod int) int {
	b, x, y := mod, 1, 0

	for b != 0 {
		t := a / b

		a -= t * b
		a, b = b, a

		x -= t * y
		x, y = y, x
	}
	x %= mod

	if x < 0 {
		x += mod
	}
	return x
}

// nCr(mod MOD)を求める
func comb(n, r, mod int, inv []int) int {
	ans := 1
	for i := 0; i < r; i++ {
		ans = (ans * (n - i)) % mod
		ans = (ans * inv[i+1]) % mod
	}
	return ans
}
