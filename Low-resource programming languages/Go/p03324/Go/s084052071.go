package main

import (
	"fmt"
	"math"
)

func main() {
	var d, n float64
	fmt.Scan(&d, &n)
	fmt.Println(int(math.Pow(100, d) * n))
}
