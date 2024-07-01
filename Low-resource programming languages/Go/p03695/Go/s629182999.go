package main

import (
	"fmt"
)

func main() {
	var colors [9]int
	var N int

	for i := range colors {
		colors[i] = 0
	}

	fmt.Scan(&N)

	var rate int = 0
	for i := 0; i < N; i++ {
		fmt.Scan(&rate)
		rate = rate / 400
		if rate >= 3200/400 {
			colors[8] += 1
		} else {
			colors[rate] = 1
		}
	}
	var count int = 0
	for i := 0; i < len(colors)-1; i++ {
		count += colors[i]
	}

	min := count
	max := count + colors[8]

	fmt.Println(min)
	if max >= 8 {
		fmt.Println(8)
	} else {
		fmt.Println(max)
	}
}