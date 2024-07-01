package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var (
		n int
		s string
	)
	fmt.Scan(&n, &s)

	b := make([]int, n+1)

	for i, v := range s {
		if v == '#' {
			b[i+1] = b[i] + 1
		} else {
			b[i+1] = b[i]
		}
	}

	a := n
	for i := 0; i < n+1; i++ {
		a = min(a, b[i]+n-i-(b[n]-b[i]))
	}
	fmt.Println(a)
}
