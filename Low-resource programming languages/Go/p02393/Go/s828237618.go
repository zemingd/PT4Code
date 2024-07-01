package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	result := []int{a, b, c}

	sort.Sort(sort.IntSlice(result))

	fmt.Println(result[0], result[1], result[2])
}

