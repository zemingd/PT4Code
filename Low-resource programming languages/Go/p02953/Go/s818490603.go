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

	result := "Yes"

	for i := n - 1; i > 0; i-- {
		if list[i]-list[i-1] >= 2 {
			result = "No"
			return
		}
		if list[i] < list[i-1] {
			list[i-1]--
		}
	}
	for i := 0; i < n-1; i++ {
		if list[i+1] < list[i] {
			result = "No"
		}
	}
	fmt.Println(result)

}
