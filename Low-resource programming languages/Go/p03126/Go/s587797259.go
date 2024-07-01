package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	m := make(map[int]int, M)
	var p, q int
	for i := 0; i < N; i++ {
		fmt.Scan(&p)
		for j := 0; j < p; j++ {
			fmt.Scan(&q)
			m[q]++
		}
	}
	cnt := 0
	for _, v := range m {
		if v == N {
			cnt++
		}
	}
	fmt.Println(cnt)
}
