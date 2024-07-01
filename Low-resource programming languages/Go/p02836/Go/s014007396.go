package main

import (
	"fmt"
)

func palindromePhilia(s string) int {
	l := len(s)
	m := l >> 1
	var f, b string
	var c int

	if l%2 == 0 {
		// front
		for i := m - 1; i >= 0; i-- {
			f += string(s[i])
		}
		// back
		for i := m; i < l; i++ {
			b += string(s[i])
		}
	} else {
		// front
		for i := m; i >= 0; i-- {
			f += string(s[i])
		}
		// back
		for i := m; i < l; i++ {
			b += string(s[i])
		}
	}

	if f == b {
		return 0
	}

	for i, v := range f {
		if string(v) != string(b[i]) {
			c++
		}
	}
	return c
}

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Println(palindromePhilia(s))
}
