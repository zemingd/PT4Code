package main

import (
	"fmt"
)

func main() {
	var N, T int
	fmt.Scan(&N, &T)

	var c, t int
	C := 1000
	tel := true
	for i := 0; i < N; i++ {
		fmt.Scan(&c, &t)
		if t <= T {
			if C >= c {
				C = c
				tel = false
			}
		}
	}
	if tel {
		fmt.Print(`TLE`)
	} else {
		fmt.Print(C)
	}
}
