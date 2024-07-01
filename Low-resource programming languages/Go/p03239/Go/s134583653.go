package main

import (
	"fmt"
)

func main() {
	var n, t int
	fmt.Scan(&n, &t)
	min := 99999
	for i := 0; i < n; i++ {
		var c, k int
		fmt.Scan(&c, &k)
		if k <= t {
			if c < min {
				min = c
			}
		}
	}
	if min == 99999 {
		fmt.Println("TLE")
		return
	}
	fmt.Println(min)
}
