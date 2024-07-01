package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	list := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}
	count := 0
	for i := 0; i < n-2; i++ {
		if (list[i] > list[i+1] && list[i+1] > list[i+2]) || (list[i] < list[i+1] && list[i+1] < list[i+2]) {
			count++
		}

	}
	fmt.Println(count)
}
