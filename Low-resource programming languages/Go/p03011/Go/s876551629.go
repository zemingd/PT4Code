package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c int
	fmt.Scanf("%d %d %d", &a, &b, &c)
	plane := []int{a, b, c}
	sort.Ints(plane)
	fmt.Printf("%d", plane[0]+plane[1])
}
