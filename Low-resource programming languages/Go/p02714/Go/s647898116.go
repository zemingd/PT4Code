package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	var r, g, b int
	for _, c := range []rune(s) {
		switch c {
		case 'R':
			r++
		case 'G':
			g++
		case 'B':
			b++
		}
	}

	not := 0
	for i := range []rune(s) {
		for j := 1; i+j*2 < len([]rune(s)); j++ {
			if s[i] != s[i+j] && s[i] != s[i+j*2] && s[i+j] != s[i+j*2] {
				not++
			}
		}
	}

	fmt.Printf("%d\n", r*g*b-not)
}
