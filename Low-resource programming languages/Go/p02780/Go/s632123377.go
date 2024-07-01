package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	m := map[int]float64{}
	nums := make([]int, N)
	for i := 0; i < N; i++ {
		var n int
		fmt.Scanf("%d", &n)
		nums[i] = n

		if _, ok := m[n]; !ok {
			f := float64(sumOneToN(n)) / float64(n)
			m[n] = f
		}
	}

	var tmp, result float64
	for i := 0; i < N; i++ {
		n := nums[i]
		if i < K {
			tmp += m[n]
		} else {
			o := nums[i-K]
			tmp -= m[o]
			tmp += m[n]
		}

		if tmp > result {
			result = tmp
		}
	}

	fmt.Printf("%F\n", result)
}

func sumOneToN(n int) int {
	var result int
	if n % 2 == 0 {
		h := n / 2
		result = (n+1)*h
	} else {
		h := n / 2
		result = (n+1)*h + (h+1)
	}
	return result
}
