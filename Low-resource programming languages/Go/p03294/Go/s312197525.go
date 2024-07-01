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

	total := 1
	for i := 0; i < n; i++ {
		total *= list[i]
	}
	result := 0
	for i := 0; i < n; i++ {
		result += (total - 1) % list[i]
	}
	fmt.Println(result)
}
