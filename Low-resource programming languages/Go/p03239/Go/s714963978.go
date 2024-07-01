package main

import "fmt"

func main() {
	var n, t int
	fmt.Scan(&n, &t)
	cs := make([]int, n)
	ts := make([]int, n)
	for i := range cs {
		var a, b int
		fmt.Scan(&a, &b)
		cs[i] = a
		ts[i] = b
	}

	min_cost := 99999
	for i := range cs {
		if ts[i] <= t && cs[i] < min_cost {
			min_cost = cs[i]
		}
	}

	if min_cost == 99999 {
		fmt.Println("TLE")
	} else {
		fmt.Println(min_cost)
	}
}
