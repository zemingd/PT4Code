package main

import (
	"fmt"
)

func main() {
	// var a, b, c, d, e int
	// fmt.Scan(&a, &b, &c, &d, &e)
	ts := make([]int, 5)
	for i := 0; i < 5; i++ {
		fmt.Scan(&ts[i])
	}

	min := 10
	sum := 0
	for i := 0; i < 5; i++ {
		t := (ts[i] % 10)
		if t != 0 && t < min {
			min = t
		}
		if t == 0 {
			sum += ts[i]
		} else {
			sum += ts[i] + 10 - t
		}
	}
	sum = sum - (10 - min)

	fmt.Println(sum)
}
