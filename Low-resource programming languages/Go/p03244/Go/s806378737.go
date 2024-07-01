package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	l := make([]int, n)
	var v int
	for i := 0; i < n; i++ {
		fmt.Scan(&v)
		l[i] = v
	}

	c := 0
	o := 0
	e := 0
	for x := 2; x < len(l); x++ {
		if l[x] != l[x-2] {
			if x%2 == 0 {
				e++
			} else {
				o++
			}
		}
	}
	if e > n/2 {
		e = n/2 - e
	}
	if o > n/2 {
		o = n/2 - o
	}
	if l[0] == l[1] {
		c = len(l) / 2
	} else {
		c = e + o
	}
	fmt.Println(c)
}
