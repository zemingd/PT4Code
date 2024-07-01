package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	m := make(map[int]int)
	for i := 1; i < N; i++ {
		m[i] = 0
	}
	for i := 0; i < K; i++ {
		var d int
		fmt.Scan(&d)
		for j := 0; j < d; j++ {
			var a int
			fmt.Scan(&a)
			m[a]++
		}
	}
	ans := 0
	for _, v := range m {
		if v == 0 {
			ans++
		}
	}
	fmt.Println(ans)
}
