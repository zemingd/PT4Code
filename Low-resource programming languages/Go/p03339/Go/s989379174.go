package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	fmt.Println(face(n, s))
}

func face(n int, s string) int {
	t := make([]int, n)
	for i := range t {
		var p int
		if i == 0 {
			p = 1
		} else if i == n {
			p = i - 1
		} else {
			p = i
		}
		for _, v := range s[:p-1] {
			if v == 'W' {
				t[i]++
			}
		}
		for _, v := range s[p+1:] {
			if v == 'E' {
				t[i]++
			}
		}
	}
	sort.Ints(t)
	return t[0]
}
