package main

import "fmt"

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	m := make(map[int]int)
	idx := 1
	m[n] = idx
	for {
		idx++
		if n % 2 == 0 {
			n = n / 2
		} else {
			n = 3 * n + 1
		}
		_, ok := m[n]
		if ok {
			fmt.Println(idx)
			return
		}
		m[n] = idx
	}
}