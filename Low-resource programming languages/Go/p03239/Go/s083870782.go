package main

import "fmt"

func main() {
	var n, T int
	fmt.Scan(&n, &T)

	cost := 1001
	for i := 0; i < n; i++ {
		var c, t int
		fmt.Scan(&c, &t)
		if T < t {
			continue
		}
		if cost > c {
			cost = c
		}
	}
	if cost == 1001 {
		fmt.Println("TLE")
		return
	}
	fmt.Println(cost)
}
