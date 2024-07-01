package main

import (
	"fmt"
)

func main() {
	var s int
	m := make(map[int]int)

	fmt.Scan(&s)

	n := s
	m[s] = 1
	for i := 2; i <= 1000000; i++ {
		var fn int
		if n%2 == 0 {
			fn = n / 2
		} else {
			fn = 3*n + 1
		}
		if _, ok := m[fn]; ok {
			fmt.Println(i)
			break
		}
		m[fn] = i
		n = fn
	}
}