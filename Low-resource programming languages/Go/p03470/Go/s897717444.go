package main

import "fmt"

func main() {
	var n, t int
	fmt.Scan(&n)
	m := make(map[int]int)
	for i := 0; i < n; i++ {
		fmt.Scan(&t)
		m[t]++
	}
	fmt.Println(len(m))
}
