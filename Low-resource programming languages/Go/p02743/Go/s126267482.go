package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64
	a = math.Sqrt(a)
	b = math.Sqrt(b)
	c = math.Sqrt(c)

	if a+b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}