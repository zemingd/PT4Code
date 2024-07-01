package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
	}

	var sum int
	prev := a[0]
	for i := 1; i < len(a); i++ {
		diff := prev - a[i]
		if diff > 0 {
			sum += diff
		} else {
			diff = 0
		}
		prev = diff + a[i]
	}
	fmt.Println(sum)
}
