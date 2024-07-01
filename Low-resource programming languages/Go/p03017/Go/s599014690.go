package main

import "fmt"

func main() {
	var n, a, b, c, d int
	var s string
	fmt.Scan(&n, &a, &b, &c, &d, &s)
	a, b, c, d = a-1, b-1, c-1, d-1

	x := c
	if x < d {
		x = d
	}
	for i := a; i < x; i++ {
		if s[i] == '#' && s[i+1] == '#' {
			fmt.Println("No")
			return
		}
	}

	if c > d {
		ok := false
		for i := b; i <= d; i++ {
			if s[i-1] == '.' && s[i] == '.' && s[i+1] == '.' {
				ok = true
				break
			}
		}
		if !ok {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")

}
