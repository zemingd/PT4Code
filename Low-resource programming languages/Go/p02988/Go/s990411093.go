package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&arr[i])
	}

	count := 0
	for i := 1; i < n-1; i++ {
		first, middle, last := arr[i-1], arr[i], arr[i+1]
		if (first < middle && middle < last) || (first > middle && middle > last) {
			count++
		}
	}
	fmt.Println(count)

}
