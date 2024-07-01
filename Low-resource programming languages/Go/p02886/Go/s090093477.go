package main

import (
	"fmt"
)

const MOD = 1000000007

func ModAdd(a, b int64) int64 {
	return (a + b) % MOD
}

func ModMul(a, b int64) int64 {
	return a * b % MOD
}

func ModSub(a, b int64) int64 {
	r := (a%MOD - b%MOD) % MOD
	if r < 0 {
		r += MOD
	}
	return r
}

func ModDiv(a, b int64) int64 {
	return a % MOD * ModInv(b) % MOD
}

func ModPow(a, n int64) int64 {
	var r int64 = 1
	for n > 0 {
		if n&1 == 1 {
			r = r * a % MOD
		}
		a = a * a % MOD
		n >>= 1
	}
	return r
}

func ModInv(a int64) int64 {
	var b, u, v int64 = MOD, 1, 0
	for b > 0 {
		t := a / b
		a -= t * b
		a, b = b, a
		u -= t * v
		u, v = v, u
	}
	u %= MOD
	if u < 0 {
		u += MOD
	}
	return u
}

func main() {
	var N int
	fmt.Scanf("%d\n", &N)

	A := make([]int, N)

	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		A[i] = a
	}
	var sum int
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			sum += A[i] * A[j]
		}
	}
	fmt.Println(sum)

}
