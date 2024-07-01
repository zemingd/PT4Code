package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b float64
	fmt.Scan(&a, &b)

	if a > b {
		fmt.Println(0)
	}
	fmt.Println(math.Ceil(b / a))
}
