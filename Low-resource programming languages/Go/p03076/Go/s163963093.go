package main

import (
	"fmt"
)

func main() {
	X := make([]int, 5)
	fmt.Scan(&X[0], &X[1], &X[2], &X[3], &X[4])
	min := 9
	sum := 0
	for i := 0; i < 5; i++ {
		t := (X[i] % 10)
		if t != 0 && t < min {
			min = t
		}
		if t == 0 {
			sum += X[i]
		} else {
			sum += X[i] + 10 - t
		}
	}
	sum -= min

	fmt.Println(sum)

}
