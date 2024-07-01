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

	result := "DENIED"

	for i := 0; i < n; i++ {
		if list[i]%2 == 0 {
			if list[i]%3 == 0 || list[i]%5 == 0 {
				result = "APPROVED"
			} else {
				result = "DENIED"
				fmt.Println(result)
				return
			}
		}
	}

	fmt.Println(result)
}
