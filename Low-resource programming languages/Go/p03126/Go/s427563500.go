package main

import (
	"fmt"
)

func main() {
	var N, M, K, num, count int
	m := make(map[int]int)

	fmt.Scan(&N, &M)

	for e := 0; e < N; e++ {
		fmt.Scan(&K)
		for i := 0; i < K; i++ {
			fmt.Scan(&num)
			if _, ok := m[num]; ok {
				m[num]++
			} else {
				m[num] = 1
			}
		}
	}

	for _, elem := range m {
		if elem == N {
			count++
		}
	}

	fmt.Println(count)
	return
}