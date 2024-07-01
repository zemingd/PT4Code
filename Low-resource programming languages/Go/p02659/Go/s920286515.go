package main

import (
	"fmt"
	"math"
)

func main() {
	var a int64
	var b float64
	fmt.Scan(&a, &b)
	fmt.Println((a * int64(math.Round(b * 100)) / 100))
}
