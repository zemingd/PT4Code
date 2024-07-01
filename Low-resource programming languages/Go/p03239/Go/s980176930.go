package main

import (
	"fmt"
)

func main() {
	var n, t int
	fmt.Scan(&n, &t)

	listC := make([]int, n)
	listT := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&listC[i], &listT[i])
	}

	num := 0
	minC := 1000
	for i := 0; i < n; i++ {
		if minC > listC[i] && listT[i] <= t {
			num = i
			minC = listC[i]
		}
	}
	if listT[num] <= t {
		fmt.Println(listC[num])
	} else {
		fmt.Println("TLE")
	}
}
