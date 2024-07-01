package main

import (
	"fmt"
)

func main() {
	var N, T int
	fmt.Scan(&N, &T)
	c := make([]int, N)
	t := make([]int, N)
	for i := range c {
		fmt.Scan(&c[i], &t[i])
	}
	minc := 1001
	for i := range t {
		if t[i] <= T {
			if minc > c[i] {
				minc = c[i]
			}
		}
	}
	if minc > 1000 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minc)
	}
}
