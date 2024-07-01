package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	fmt.Scan(&a, &b)
	fmt.Println(int(math.Max(a+b, math.Max(a*b, a-b))))
}
