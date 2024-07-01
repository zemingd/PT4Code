package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, a, b, c, d, e int
	fmt.Scan(&n, &a, &b, &c, &d, &e)

	x := []int{a, b, c, d, e}
	sort.Ints(x)
	min := x[0]

	if n%min == 0 {
		fmt.Println(n/min + 4)
	} else {
		fmt.Println(n/min + 4 + 1)
	}
}
