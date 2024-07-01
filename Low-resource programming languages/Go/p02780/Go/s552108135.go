package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	nums := make([]int, N)
	for i := 0; i < N; i++ {
		var n int
		fmt.Scanf("%d", &n)
		nums[i] = n
	}

	m := map[int]float32{}

	var result float32
	for i := 0; i <= len(nums)-K; i++ {
		var tmp float32
		for j := i; j <= i+K-1; j++ {
			nj := nums[j]
			if v, ok := m[nj]; ok {
				tmp += v
			} else {
				f := float32(sumOneToN(nj)) / float32(nj)
				tmp += f
				m[nj] = f
			}
		}
		if tmp > result {
			result = tmp
		}
	}

	fmt.Println(result)
}

func sumOneToN(n int) int {
	var result int
	for i := 1; i <= n; i++ {
		result += i
	}
	return result
}
