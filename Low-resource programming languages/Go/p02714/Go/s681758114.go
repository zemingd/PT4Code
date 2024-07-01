package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	var r int
	var g int
	var b int
	fmt.Scan(&n)
	fmt.Scan(&s)
	l := []rune(s)
	for _, a := range l {
		switch a {
		case 'R':
			r++
		case 'G':
			g++
		case 'B':
			b++
		}
	}

	var NG int
	NG = 0

	for i := range l {
		for j := 1; i+j*2 < len(l); j++ {
			if s[i] != s[i+j] && s[i] != s[i+j*2] && s[i+j] != s[i+j*2] {
				NG++
			}
		}
	}
	fmt.Println(r*g*b - NG)
}