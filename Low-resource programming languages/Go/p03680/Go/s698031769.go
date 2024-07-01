package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]int, n)
	var to int
	for i := 1; i <= n; i++ {
		fmt.Scan(&to)
		m[i] = to
	}
	cnt := 0
	current := 1
L:
	for {
		switch m[current] {
		case 2:
			cnt++
			current = 2
			break L
		case 0:
			cnt = -1
			current = 0
			break L
		default:
			cnt++
			current, m[current] = m[current], 0
		}
	}
	fmt.Println(cnt)
}
