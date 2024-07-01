package main

import (
	"fmt"
)

func main() {
	var x int64
	fmt.Scanf("%d", &x)
	money := int64(100)
	y := 0
	for money < x {
		money = int64(float64(money) * 1.01)
		y++
	}
	fmt.Println(y)
}
