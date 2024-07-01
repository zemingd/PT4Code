package main

import "fmt"

func main() {
	var n int
	var tmp int
	fmt.Scan(&n)
	m := make(map[int]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		m[tmp]++
	}
	fmt.Println(len(m))
}
