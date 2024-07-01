package main

import (
	"fmt"
)

func main() {
	var N, K, uc, oc int
	fmt.Scan(&N, &K)
	var r float64
	for i := 1; i <= N; i++ {
		if i < K {
			uc++
		} else {
			oc++
		}
	}
	r += float64(oc) / float64(N)
	for i := 1; i <= N; i++ {
		if i >= K {
			break
		}
		r += 1 / (float64(N) * float64(calc(i, K)))
	}
	fmt.Println(r)
}
func calc(n, k int) int {
	w := n
	r := 0
	if w >= k {
		return 1
	}
	for w < k {
		w *= 2
		r++
	}
	return Pow(2, r)
}
func Pow(x int, n int) int {
	r := 1
	for n > 0 {
		if (n & 1) == 1 {
			r *= x
		}
		x *= x
		n = n >> uint(1)
	}
	return r
}