package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	listA := make([]int, n)
	listB := make([]int, n)
	listC := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&listA[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&listB[i])
	}
	for i := 0; i < n-1; i++ {
		fmt.Scan(&listC[i])
	}

	manzoku := 0
	for i := 0; i < n; i++ {
		manzoku += listB[listA[i]-1]
		if i > 0 && listA[i] == listA[i-1]+1 {
			manzoku += listC[listA[i-1]-1]
		}
	}
	fmt.Println(manzoku)
}
