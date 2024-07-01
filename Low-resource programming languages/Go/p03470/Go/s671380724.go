package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	sort.Ints(arr)
	var ra []int
	b := arr[0]
	ra = append(ra, b)
	for i := 1; i < len(arr); i++ {
		if arr[i] == b {
			continue
		}
		ra = append(ra, arr[i])
		b = arr[i]
	}
	fmt.Println(len(ra))
}
