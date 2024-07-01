package main

import (
	"fmt"
)

func abs(a int) int {
	if a < 0 {
		return -a
	} else {
		return a
	}
}

func main() {
	a := make([]int, 3)
	fmt.Scan(&a[0], &a[1], &a[2])
	max := a[0]
	min := a[2]
	for i := 0; i < 3; i++ {
		if a[i] > max {
			max = a[i]
		}
		if a[i] < min {
			min = a[i]
		}
	}
	fmt.Println(max - min)
}
