package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	b := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}
	c := make([]int, n - 1)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&c[i])
	}

	s := 0
	y := len(a) + 1
	for _, v := range a {
		v = v - 1
		s += b[v]
		if y == v - 1 {
			s += c[y]
		}
		y = v
	}

	fmt.Println(s)
}
