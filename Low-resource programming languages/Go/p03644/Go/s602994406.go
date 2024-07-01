package main

import (
	"fmt"
	"math"
)

var (
	n float64
)

func main() {
	fmt.Scan(&n)
	fmt.Println(math.Pow(2.0, math.Floor(math.Log(n)/math.Log(2.0))))
}