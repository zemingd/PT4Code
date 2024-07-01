package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	var p = make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}

	p2 := 0
	count := 0
	for i := 0; i < len(p)-2; i++ {
		tmp := []int{p[i], p[i+1], p[i+2]}

		p2 = p[i+1]
		sort.Ints(tmp)
		if p2 == tmp[1] {
			count++
		}
	}
	fmt.Println(count)
}
