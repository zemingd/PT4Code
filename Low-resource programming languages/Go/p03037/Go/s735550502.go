package main

import (
	"fmt"
)

func main() {
	var n int
	var m int
	var l int
	var r int

	fmt.Scan(&n)
	fmt.Scan(&m)

	fmt.Scan(&l)
	fmt.Scan(&r)

	min := l
	max := r
	for i := 0; i < m-1; i++ {
		fmt.Scan(&l)
		fmt.Scan(&r)

		if min < l {
			min = l
		}
		if max > r {
			max = r
		}
	}

	n1 := n - max
	n2 := min - 1

	fmt.Println(n - n1 - n2)
}
