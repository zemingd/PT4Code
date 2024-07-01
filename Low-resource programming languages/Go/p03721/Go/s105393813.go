package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	array := make([]int, 0)

	var a, b int
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &a, &b)
		for j := 0; j < b; j++ {
			array = append(array, a)
		}
	}

	sort.Sort(sort.IntSlice(array))
	fmt.Println(array[K-1])
}
