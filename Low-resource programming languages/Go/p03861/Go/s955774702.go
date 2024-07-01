package main

import (
	"fmt"
)

func main() {
	var a, b, x, min, max int64
	fmt.Scan(&a, &b, &x)
	if a < x {
		if a == 0 {
			min = 0
		} else {
			min = 1
		}
	} else {
		min = (a - (a % x)) / x
	}
	max = (b - (b % x)) / x
	if min > max || min > b || x*min < a || x*max < x*min {
		fmt.Println(0)
		return
	}
	fmt.Println(max - min + 1)

}