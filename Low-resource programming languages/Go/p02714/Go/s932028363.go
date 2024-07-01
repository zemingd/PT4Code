package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	var r, g, b []int
	for i, c := range s {
		switch c {
		case 'R':
			r = append(r, i)
		case 'G':
			g = append(g, i)
		case 'B':
			b = append(b, i)
		}
	}

	var cnt int
	for _, x := range r {
		for _, y := range g {
			for _, z := range b {
				sl := []int{x, y, z}
				sort.Ints(sl)
				if sl[2]-sl[1] != sl[1]-sl[0] {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
}
