package main

import (
	"fmt"
	"math"
)

func main() {
	var a int
	var b int
	var c int
	fmt.Scan(&a, &b, &c)
	if (math.Sqrt(float64(a))+math.Sqrt(float64(b)))-math.Sqrt(float64(c)) < 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}