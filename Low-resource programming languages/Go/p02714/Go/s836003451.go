package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	var r, g, b int
	for i := 0; i < n; i++ {
		if s[i] == 'R' {
			r++
		} else if s[i] == 'G' {
			g++
		} else {
			b++
		}
	}

	ans := r * g * b
	for i := 0; i < n; i++ {
		for j := i+1; j < n; j++ {
			k := 2*j - i
			if k == j || k >= n {
				continue
			}
			if s[i] != s[j] && s[j] != s[k] && s[k] != s[i] {
				ans--
			}
		}
	}
	fmt.Println(ans)
}