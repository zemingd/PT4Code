package main

import "fmt"

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var n, a, b, c, d int
	fmt.Scan(&n, &a, &b, &c, &d)
	a-- // 0-indexed
	b--
	c--
	d--
	s := make([]byte, n)
	fmt.Scan(&s)
	for i := a; i < max(c, d); i++ {
		if s[i] == '#' && s[i+1] == '#' {
			fmt.Println("No")
			return
		}
	}
	ok := false
	if c < d {
		ok = true
	} else {
		for i := b; i < d; i++ {
			if s[i-1] == '.' && s[i] == '.' && s[i+1] == '.' {
				ok = true
				break
			}
		}
	}
	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
