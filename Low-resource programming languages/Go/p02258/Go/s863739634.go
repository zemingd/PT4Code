package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	dist := -9999999999
	min := 9999999999
	for i := 0; i < n; i++ {
		var e int
		fmt.Scan(&e)

		if dist < e - min {
			dist = e - min
		}

		if min > e {
			min = e
		}
	}

	fmt.Println(dist)
}

