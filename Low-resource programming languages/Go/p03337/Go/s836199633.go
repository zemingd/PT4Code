package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	cal := []int{a+b, a-b, a*b}

	sort.Ints(cal)

	fmt.Println(cal[len(cal) - 1])
}