package main

import (
	"fmt"
)

func main() {
	var n, a, b, c, d int
	var s string
	fmt.Scan(&n, &a, &b, &c, &d, &s)
	var f, sp bool
	f = false
	sp = false
	for i := a; i < c - 1; i++ {
		if s[i] == '#' {
			if f {
				fmt.Println("No")
				return
			}
			f = true
		} else {
			f = false
		}
	}
	f = false
	for i := b; i < d - 1; i++ {
		if s[i] == '#' {
			if f {
				fmt.Println("No")
				return
			}
			f = true
		} else {
			f = false
		}
		if i <= d-3 {
			if s[i] == '.' && s[i+1] == '.' && s[i+2] == '.' {
				sp = true
			}
		}
	}
	if c > d && !sp {
		if (s[d-2] == '#' || s[d] == '#') && (s[b-2] == '#' || s[b] == '#') {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}