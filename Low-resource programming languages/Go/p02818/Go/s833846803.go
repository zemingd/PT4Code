package main

import (
	"fmt"
)

func solution(a, b, k uint64) []uint64 {
	ans := make([]uint64, 0, 2)
	if a >= k {
		a -= k
		ans = []uint64{a, b}
	} else if a < k {
		k -= a
		a = 0
		b -= k
		if b < 0 {
			b = 0
		}
		ans = []uint64{a, b}
	}
	return ans
}

func main() {
	var a, b, k uint64
	fmt.Scan(&a, &b, &k)
	fmt.Println(solution(a, b, k))
}
