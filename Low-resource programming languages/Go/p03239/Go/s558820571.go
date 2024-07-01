package main

import (
	"fmt"
)

func main() {
	var n, t, c, d int
	fmt.Scanln(&n, &t)
	min := 1001
	for i := 0; i < n; i++ {
		fmt.Scanln(&c, &d)
		if d <= t && c < min {
			min = c
		}
	}
	if min == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(min)
	}
}
