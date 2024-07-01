package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	m := make(map[int]int)
	for i := 0; i < N; i++ {
		var k, t int
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			fmt.Scan(&t)
			m[t]++
		}
	}
	count := 0
	for _, v := range m {
		if v == N {
			count++
		}
	}
	fmt.Println(count)
}
