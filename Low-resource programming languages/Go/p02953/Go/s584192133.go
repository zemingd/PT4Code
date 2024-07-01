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

	for i := 0; i < n-1; i++ {
		if list[i+1]-list[i] > 2 {
			result = "No"
			break
		} else if list[i] > list[i+1] {
			list[i]--
		}
	}
	/*
			for i := 0; i < n-1; i++ {
				if list[i+1] < list[i] {
					result = "No"
				}
		    }
	*/
	fmt.Println(result)

}
