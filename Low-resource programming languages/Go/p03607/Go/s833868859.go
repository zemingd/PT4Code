package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]bool)
	var a int
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		b, ok := m[a]
		if !ok {
			m[a] = true
			continue
		}
		m[a] = !b
	}

	var r int
	for _, v := range m {
		if v {
			r++
		}
	}
	fmt.Println(r)
}