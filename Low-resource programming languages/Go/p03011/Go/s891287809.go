package main

import "fmt"

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)

	min := q + r
	if min > p+q {
		min = p + q
	}
	if min > p+r {
		min = p + r
	}
	fmt.Println(min)
}
