package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scanf("%d", &x)

	money := 100
	year := 1
	for ; ; year++ {
		money = int(float64(money) * 1.01)
		if money >= x {
			break
		}
	}
	fmt.Printf("%d\n", year)
}
