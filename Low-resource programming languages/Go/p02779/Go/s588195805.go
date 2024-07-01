package main

import (
	"fmt"
)

func main() {
	var n int

	fmt.Scan(&n)
	a := make([]int, n)
	dic := make(map[int]int, 0)
	isDistinct := false
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if _, exist := dic[a[i]]; exist {
			isDistinct = true
		}
		dic[a[i]]++
	}

	if isDistinct {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}
