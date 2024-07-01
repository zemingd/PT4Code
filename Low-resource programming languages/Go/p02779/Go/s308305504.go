package main

import (
	"fmt"
)

func main() {
	var n int

	fmt.Scan(&n)
	a := make([]int, n)
	isDistinct := false
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if isDistinct == false {
			for j := 0; j < i; j++ {
				if a[i] == a[j] {
					isDistinct = true
					break
				}
			}
		}
	}

	if isDistinct {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}
