package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	m := make(map[int]int, N)
	for i := 0; i < N; i++ {
		var tmp int
		fmt.Scan(&tmp)
		m[tmp]++
	}
	cnt := 0
	for _, v := range m {
		cnt += v % 2
	}
	fmt.Println(cnt)
}
