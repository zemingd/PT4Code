package main

import (
	"fmt"
)

func main() {
	var N, T, c, t int
	fmt.Scan(&N, &T)
	mc := 9999
	for i := 0; i < N; i++ {
		fmt.Scan(&c, &t)
		if t <= T && c < mc {
			mc = c
		}
	}
	if mc == 9999 {
		fmt.Println("TLE")
	} else {
		fmt.Println(mc)
	}
}