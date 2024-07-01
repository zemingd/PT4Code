package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&arr[i])
	}
	sort.Sort(sort.IntSlice(arr))

	fmt.Println(arr)

	preSize := -1
	count := 0
	for _, e := range arr {
		if preSize != e {
			count++
			preSize = e
		}
	}
	fmt.Println(count)
}
