package main

import (
	"fmt"
)

func Binomial(n, k int) int {
	// (n,k) = (n, n-k)
	if k > n/2 {
		k = n - k
	}
	b := 1
	for i := 1; i <= k; i++ {
		b = (n - k + i) * b / i
	}
	return b
}

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	// fmt.Printf("%d, %d, %d\n", N, A, B)
	// (2^N - 1) % (1000000007)
	// fmt.Printf("%d\n", Binomial(1000, 133))
	res := 0
	for i := 1; i <= N; i++ {
		if i == A || i == B {
			continue
		}
		res += Binomial(N, i)
		res = res % 1000000007
	}
	fmt.Printf("%d\n", res)
}
