package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println(math.Ceil(float64(b) / float64(a)))
}
