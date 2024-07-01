package main

import (
	"fmt"
)

func main() {
	var n, T int
	fmt.Scan(&n, &T)
	r := 1001
	for i := 1; i <= n; i++ {
		var c, t int
		fmt.Scan(&c, &t)
		if t <= T && c < r {
			r = c
		}
	}
	if r == 1001 {
		fmt.Println("TLE")
		return
	}
	fmt.Println(r)
}
