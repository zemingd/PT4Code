package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)
	if math.Sqrt(a)+math.Sqrt(b) < math.Sqrt(c) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
