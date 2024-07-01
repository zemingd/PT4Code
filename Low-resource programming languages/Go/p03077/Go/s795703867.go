package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, A, B, C, D, E int
	fmt.Scan(&N, &A, &B, &C, &D, &E)
	p := []int{A, B, C, D, E}
	sort.Ints(p)
	x := p[0]
	fmt.Println(N/x + 5)
}
