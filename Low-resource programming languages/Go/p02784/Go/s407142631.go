package main

import (
	"fmt"
)

func main() {
	var h, n int
	fmt.Scan(&h, &n)
	a := make([]int, n)
	sum := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		sum += a[i]
	}

	if sum >= h {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
