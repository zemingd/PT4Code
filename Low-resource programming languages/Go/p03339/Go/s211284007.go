package main

import (
	"fmt"
)

func main() {
	var n, c, m int
	var s string
	fmt.Scan(&n, &s)
	m = n
	t := []rune(s)
	for i := 1; i < n; i++ {
		c = 0
		l := map[string]int{}
		r := map[string]int{}
		for j := 0; j < i; j++ {
			l[string(t[j])]++
		}
		for v := i; v < n; v++ {
			r[string(t[v])]++
		}
		for k, a := range l {
			if k == "W"{
				c += a - 1
			}
		}
		for k, a := range r {
			if k == "E" {
				c += a
			}
		}
		if c < m {
			m = c
		}
		fmt.Println(c)
	}
	fmt.Println(m)
}