package main

import (
	"fmt"
)

const MOD = 1e9 + 7

func main() {
	var N int
	fmt.Scanf("%d\n", &N)
	A := make([]int, 60)
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		for i := 0; i < 60; i++ {
			if a&(1<<uint(i)) == 0 {
				continue
			}
			A[i] += 1
		}
	}

	sum := 0
	for i := 0; i < 60; i++ {
		p := ModPow(2, int(i))
		sum = (sum + ModMul(ModMul(N-A[i], A[i]), p)) % MOD
	}
	fmt.Println(sum)
}

func ModPow(a, n int) int {
	var r int = 1
	for n > 0 {
		if n&1 == 1 {
			r = r * a % MOD
		}
		a = a * a % MOD
		n >>= 1
	}
	return r
}

func ModMul(a, b int) int {
	return a * b % MOD
}
