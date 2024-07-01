package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64

	fmt.Scan(&a, &b, &c)
	s := (a + b + c) / 2
	fmt.Println(int(math.Sqrt(s * (s - a) * (s - b) * (s - c))))
}
