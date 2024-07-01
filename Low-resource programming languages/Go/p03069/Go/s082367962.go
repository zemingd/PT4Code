package main

import "fmt"

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	var (
		n int
		s string
	)
	fmt.Scan(&n, &s)

	foundB := false
	w, b := 0, 0
	for i := 0; i < n; i++ {
		if s[i] == '#' {
			b++
			foundB = true
		}
		if foundB && s[i] == '.' {
			w++
		}
	}
	fmt.Println(min(w, b))
}
