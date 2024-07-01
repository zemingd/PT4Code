package main

import (
	"fmt"
)

func main() {
	var p, q, r, min int
	fmt.Scanf("%d%d%d", &p, &q, &r)

	min = p + q
	if min > q+r {
		min = q + r
	}
	if min > r+p {
		min = r + p
	}
	fmt.Printf("%d\n", min)
}
