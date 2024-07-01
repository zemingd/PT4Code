package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	var num int
	counter := 1
	maximum := make([]int, 1, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&num)
		a[i] = num
	}
	maximum[0] = a[0]

	for i := 1; i < n; i++ {
		x := -1
		y := -1
		for j := 0; j < len(maximum); j++ {
			if a[i] > maximum[j] && maximum[j] > x {
				x = maximum[j]
				y = j
			}
		}
		if x == -1 {
			counter++
			maximum = append(maximum, a[i])
		} else {
			maximum[y] = a[i]
		}
	}
	fmt.Println(counter)
}
