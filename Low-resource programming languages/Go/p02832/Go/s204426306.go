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
	breakCount := 0
	currentI := 1

	for p := 0; p < n; p++ {
		if a[p] == currentI {
			currentI++
		} else {
			breakCount++
		}
	}
	if breakCount < n {
		fmt.Println(breakCount)
	} else {
		fmt.Println("-1")
	}
}
