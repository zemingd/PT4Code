package main

import (
	"fmt"
	"math"
)

func main() {
	var d, n float64
	fmt.Scan(&d, &n)

	if d == 0 {
		if n == 100 {
		  fmt.Println(101)
		} else {
		  fmt.Println(n)
		}
	} else {
		pow := math.Pow(100.0, d)
		fmt.Println(pow * n)
	}
}
