package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	dist := -9999999999
	min := 9999999999
	for _, e := range a {
		if dist < e - min {
			dist = e - min
		}

		if min > e {
			min = e
		}
	}

	fmt.Println(dist)
}

