package main

import (
	"fmt"
	"sort"
)

func main() {
	var k, n int
	fmt.Scan(&k, &n)

	list := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}

	list2 := make([]int, n)
	for i := 0; i < n-1; i++ {
		list2[i] = list[i+1] - list[i]
	}
	list2[n-1] = k + list[0] - list[n-1]

	sort.Sort(sort.IntSlice(list2))

	result := 0
	for i := 0; i < n-1; i++ {
		result += list2[i]
	}
	fmt.Println(result)
}
