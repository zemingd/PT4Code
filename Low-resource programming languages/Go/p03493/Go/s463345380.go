package main

import (
	"fmt"
)

func main() {
	var n int
	var a, b, c int
	fmt.Scan(&n, &a, &b, &c)
	values := [3]int{a, b, c}
	count := -1
	f := true
	for f {
		for i, t := range values {
			if t%2 == 0 {
				values[i] /= 2
			} else {
				f = false
			}
		}
		count++
	}
	fmt.Println(count)
}
