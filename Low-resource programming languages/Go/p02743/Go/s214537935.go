package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64
	var k float64
	fmt.Scanf("%d %d %d", &a, &b, &c)
	k = math.Sqrt(a) + math.Sqrt(b)
	if k <= math.Sqrt(c) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
