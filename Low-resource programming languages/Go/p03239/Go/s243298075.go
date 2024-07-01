package main

import (
	"fmt"
)

func main() {
	var N, T int
	fmt.Scan(&N)
	fmt.Scan(&T)

	minc := 9999
	for i := 0; i < N; i++ {
		var ci, ti int
		fmt.Scan(&ci)
		fmt.Scan(&ti)
		if ti <= T {
			if ci < minc {
				minc = ci
			}
		}
	}

	if minc == 9999 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minc)
	}
}
