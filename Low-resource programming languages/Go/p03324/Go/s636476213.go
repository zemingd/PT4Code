package main

import (
	"fmt"
	"math"
)

func main() {
	var D, N float64
	fmt.Scan(&D, &N)
	fmt.Println(int(math.Pow(100.0, D) * N))
}
