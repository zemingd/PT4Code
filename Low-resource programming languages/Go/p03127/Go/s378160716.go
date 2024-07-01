package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	xs := make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i])
	}

	for {
		sort.Ints(xs)
		min := xs[0]
		nexts := make([]int, 1)
		nexts[0] = min
		for i := 1; i < len(xs); i++ {
			if xs[i]%min != 0 {
				nexts = append(nexts, xs[i]%min)
			}
		}
		if len(nexts) == 1 {
			fmt.Println(min)
			break
		}
		xs = nexts
	}
}
