package main

import (
	"fmt"
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
	for i := 0; i < n; i++ {
		b := max(array, i)
		fmt.Println(b)
	}
}

func max(a []int, index int) int {
	max := a[0]
	for in, i := range a {
		if i > max && index != in {
			max = i
		}
	}
	return max
}
