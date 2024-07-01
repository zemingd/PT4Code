package main

import (
	"fmt"
	"math"
)

func main() {
	var d, n float64
	fmt.Scan(&d, &n)

	if d == 0 {
		fmt.Println(n)
	} else {
		pow := math.Pow(100.0, d)
		fmt.Println(pow * n)
	}
}
