package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		a float32
		b float32
		c float32
	)
	fmt.Scan(&a, &b, &c)

	if c+2*math.Sqrt(a*b) > a+b {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}
