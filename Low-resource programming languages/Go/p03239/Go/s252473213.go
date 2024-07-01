package main

import "fmt"

func main() {
	var n, t, c, tt int
	fmt.Scan(&n, &t)
	minc := 1001
	for i := 0; i < n; i++ {
		fmt.Scan(&c, &tt)
		if tt <= t && minc > c {
			minc = c
		}
	}
	if minc != 1001 {
		fmt.Println(minc)
		return
	}
	fmt.Println("TLE")
}
