package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	valueList := make([]int, n)
	for i := range valueList {
		fmt.Scan(&valueList[i])
	}
	costList := make([]int, n)
	for i := range costList {
		fmt.Scan(&costList[i])
	}

	total := 0
	for i := range valueList {
		if valueList[i] > costList[i] {
			total += valueList[i] - costList[i]
		}
	}

	fmt.Println(total)
}
