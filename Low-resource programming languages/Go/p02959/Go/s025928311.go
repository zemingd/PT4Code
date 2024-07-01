package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	listA := make([]int, n+1)
	listB := make([]int, n)
	for i := 0; i < n+1; i++ {
		fmt.Scan(&listA[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&listB[i])
	}

	count := 0
	for i := 0; i < n; i++ {
		if listA[i] <= listB[i] {
			count += listA[i]
			if listA[i+1] >= listB[i]-listA[i] {
				count += listB[i] - listA[i]
				listA[i+1] -= listB[i] - listA[i]
			} else {
				count += listA[i+1]
				listA[i+1] = 0
			}
		} else {
			count += listB[i]
		}
	}
	fmt.Println(count)

}
