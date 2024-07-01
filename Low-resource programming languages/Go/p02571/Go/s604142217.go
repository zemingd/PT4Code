package main

import "fmt"

func main() {
	var s, t string

	fmt.Scan(&s)
	fmt.Scan(&t)

	m := 0
	for i := 0; i < len(s)-len(t); i++ {
		n := substringMatchCount(s, t, i)
		if n > m {
			m = n
		}
	}

	fmt.Println(len(t) - m)
}

func substringMatchCount(s string, t string, idx int) int {
	c := 0
	for i := 0; i < len(t); i++ {
		if s[idx+i] == t[i] {
			c++
		}
	}

	return c
}
