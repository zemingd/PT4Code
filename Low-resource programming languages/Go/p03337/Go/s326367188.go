package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, res int
	fmt.Scan(&a, &b)
	res = int(math.Max(float64(a+b), float64(res)))
	res = int(math.Max(float64(a-b), float64(res)))
	res = int(math.Max(float64(a*b), float64(res)))
	fmt.Println(res)
}
