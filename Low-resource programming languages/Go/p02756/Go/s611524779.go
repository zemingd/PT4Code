package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	var q int
	fmt.Scan(&q)
	var t, f int
	var c string
	for i := 0; i < q; i++ {
		fmt.Scan(&t)
		if t == 1 {
			s = reverse(s)
		} else if t == 2 {
			fmt.Scanf("%d %s", &f, &c)
			if f == 1 {
				s = strings.Join([]string{c, s}, "")
			} else if f == 2 {
				s = strings.Join([]string{s, c}, "")
			}
		}
	}
	fmt.Println(s)
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}
