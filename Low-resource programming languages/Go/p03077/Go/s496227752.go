package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n, a, b, c, d, e int
	fmt.Scan(&n, &a, &b, &c, &d, &e)

	x := []int{a, b, c, d, e}
	sort.Ints(x)
	min := x[0]

	count := int(math.Ceil(float64(n) / float64(min)))
	fmt.Println(count + 4)
}
