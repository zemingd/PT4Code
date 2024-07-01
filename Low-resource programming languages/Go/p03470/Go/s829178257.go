package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	d := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}

	m := make(map[int]bool)
	for _, v := range d {
		if !m[v] {
			m[v] = true
		}
	}
	fmt.Println(len(m))
}
