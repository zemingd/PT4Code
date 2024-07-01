package main

import (
	"fmt"
	"math"
)

//const pi = math.Pi

func main() {
	var d, n float64
	fmt.Scan(&d, &n)
	if n != 100 {
		fmt.Println(math.Pow(100, d) * n)
	} else {
		fmt.Println(math.Pow(100, d) * 101)
	}
}