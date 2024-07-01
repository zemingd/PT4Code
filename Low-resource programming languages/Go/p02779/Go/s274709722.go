package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	sort.Ints(a)
	for i := 0; i < n-1; i++ {
		if a[i] == a[i+1] {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
