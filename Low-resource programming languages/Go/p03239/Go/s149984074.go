package main

import "fmt"

func main() {
	var N, T int
	fmt.Scan(&N, &T)

	var c, t int
	min := 9999
	for i := 0; i < N; i++ {
		fmt.Scan(&c, &t)
		if t <= T && c <= min {
			min = c
		}
	}

	if min != 9999 {
		fmt.Println(min)
	}
	fmt.Println("TLE")
}
