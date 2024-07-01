package main

import (
	"fmt"
)

func main() {
	var (
		n, count int
	)
	fmt.Scan(&n)
	d := make([]int, n)
	m := make(map[int]bool)
	for i := range d {
		fmt.Scan(&d[i])
		if _, ok := m[d[i]]; !ok {
			m[d[i]] = true
			count++
		}
	}
	fmt.Println(count)
}
