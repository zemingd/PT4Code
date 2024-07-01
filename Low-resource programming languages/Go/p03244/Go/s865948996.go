package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	m1 := make(map[int]int)
	m2 := make(map[int]int)
	var v1, v2 int

	var v int
	for i := 0; i < n; i++ {
		fmt.Scan(&v)

		if i%2 == 0 {
			m1[v]++
			if v1 < m1[v] {
				v1 = m1[v]
			}
		} else {
			m2[v]++
			if v2 < m2[v] {
				v2 = m2[v]
			}
		}
	}

	if n/2 == v1 && v1 == v2 {
		fmt.Println(n / 2)
	} else {
		fmt.Println(n/2 - v1 + n/2 - v2)
	}
}
