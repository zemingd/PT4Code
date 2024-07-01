package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, e int
	var c int = 100
	fmt.Scan(&a, &b)
	c = int(math.Pow(float64(c), float64(a)))
	e = c
	for i := 0; i < b-1; i++ {
		fmt.Println(c)
		c += e
	}
	fmt.Println(c)
}