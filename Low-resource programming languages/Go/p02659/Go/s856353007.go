package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	fmt.Scan(&a, &b)
	result := int(math.Floor(a * b))
	fmt.Println(result)
}
