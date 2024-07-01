package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)
	d := a + b + 2*math.Sqrt(a) + math.Sqrt(b)
	e := c
	if d < e {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
