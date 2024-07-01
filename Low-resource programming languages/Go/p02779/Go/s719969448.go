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

	result := "YES"
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if list[i] == list[j] {
				result = "NO"
				break
			}
		}
	}

	fmt.Println(result)
}
