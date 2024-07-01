package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	array := []int{}
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		array = append(array, a)
	}
	a := make([]int, len(array))
	copy(a, array)
	sort.Slice(a, func(i, j int) bool {
		return a[i] > a[j]
	})
	for i := 0; i < n; i++ {
		if array[i] != a[0] {
			fmt.Println(a[0])
		} else {
			fmt.Println(a[1])
		}

	}
}
