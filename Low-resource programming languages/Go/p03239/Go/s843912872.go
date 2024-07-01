package main

import (
	"fmt"
)

func min(n []int) {
	min := 9999999999999
	for _, v := range n {
		if min > v {
			min = v
		}
	}
	if min == 9999999999999 {
		fmt.Println("TLE")
		return
	}

	fmt.Println(min)
}
func main() {
	var N, T int
	fmt.Scan(&N, &T)

	var c = make([]int, N)
	var t = make([]int, N)
	var c_t []int
	for i := 0; i < N; i++ {
		fmt.Scan(&c[i], &t[i])
		if t[i] <= T {
			c_t = append(c_t, c[i])
		}
	}
	min(c_t)
}