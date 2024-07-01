package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)

	xy := []int{a * c, a * d, b * c, b * d}
	sort.Ints(xy)
	fmt.Println(xy[3])
}
