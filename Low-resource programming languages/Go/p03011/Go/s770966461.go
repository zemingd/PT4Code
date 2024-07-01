package main

import (
	"fmt"
	"sort"
)

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)

	result := make([]int, 0)
	result = append(result, p + q)
	result = append(result, q + r)
	result = append(result, p + r)
	sort.Ints(result)

	fmt.Println(result[0])
}
