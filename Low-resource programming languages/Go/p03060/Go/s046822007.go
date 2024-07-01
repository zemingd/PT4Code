package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	listV := make([]int, n)
	listC := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&listV[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&listC[i])
	}
	x := 0
	y := 0
	for i := 0; i < n; i++ {
		if listV[i] > listC[i] {
			x += listV[i]
			y += listC[i]
		}
	}
	fmt.Println(x - y)

}
