package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, h int
	fmt.Scan(&n, &h)
	arr1, arr2 := make([]int, n + 1), make([]int, n + 1)
	for i := 1; i < n + 1; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		arr1[i], arr2[i] = a, b
	}
	sort.Sort(sort.IntSlice(arr1))
	sort.Sort(sort.IntSlice(arr2))
	ma := arr1[n]
	count := 0
	for i := n; i >= 0; i-- {
		x := arr2[i]
		if ma >= x {
			break
		}
		h -= x
		count++
		if h <= 0 {
			break
		}
	}
	if h <= 0 {
		fmt.Println(count)
	} else {
		mod := h % ma
		count += h / ma
		if mod != 0 {
			count++
		}
		fmt.Println(count)
	}
}