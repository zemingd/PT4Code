package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)
	xx := readMultiple(x)
	xy := readMultiple(y)
	xz := readMultiple(z)
	xd := []int{}
	for _, vx := range xx {
		for _, vy := range xy {
			for _, vz := range xz {
				xd = append(xd, vx+vy+vz)
			}
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(xd)))
	for i, v := range xd {
		if i == k {
			return
		}
		fmt.Println(v)
	}
}

func readMultiple(n int) []int {
	xi := []int{}
	for i := 0; i < n; i++ {
		j := 0
		fmt.Scan(&j)
		xi = append(xi, j)
	}
	return xi
}
