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

	result := 0
	for i := 0; i < n; i++ {
		result += list[i] - 1
	}
	fmt.Println(result)
}
