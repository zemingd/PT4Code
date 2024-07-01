package main

import (
	"fmt"
	"math"
)

type city struct {
	cityID   int
	visitNum int
}

func main() {
	var n, a, b, c, d, e int
	fmt.Scan(&n, &a, &b, &c, &d, &e)

	min := a
	if min > b {
		min = b
	}
	if min > c {
		min = c
	}
	if min > d {
		min = d
	}
	if min > e {
		min = e
	}

	cal := int(math.Ceil(float64(n) / float64(min)))
	cal += 4
	fmt.Print(cal)

}
