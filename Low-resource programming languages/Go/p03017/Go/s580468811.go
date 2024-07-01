package main

import (
	"fmt"
)

func main() {
	var n, a, b, c, d int
	var s string
	fmt.Scan(&n, &a, &b, &c, &d, &s)
	var f bool
	f = false
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
	}
	if c > d {
		for i := b - 2; i < d - 1; i++ {
			if s[i] == '.' && s[i+1] == '.' && s[i+2] == '.' {
				fmt.Println("Yes")
				return
			}
		}
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}