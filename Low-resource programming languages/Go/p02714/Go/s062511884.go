package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	r := 0
	g := 0
	b := 0
	for _, c := range s {
		if c == 'R' {
			r++
		}
		if c == 'G' {
			g++
		}
		if c == 'B' {
			b++
		}
	}
	ans := r * g * b

	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if (i+j)%2 == 0 && s[i] != s[j] && s[i] != s[(i+j)/2] && s[j] != s[(i+j)/2] {
				ans--
			}
		}
	}

	fmt.Println(ans)
}
