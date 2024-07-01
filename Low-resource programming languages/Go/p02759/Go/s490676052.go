package main

import (
	"fmt"
	"math"
)

func main() {
	var n float64
	fmt.Scan(&n)

	fmt.Println(math.Ceil(n/2))
}
