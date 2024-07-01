package main

import (
	"fmt"
	"math"
)

func main() {

	var a, b, c int
	fmt.Scan(&a, &b, &c)

	x := a - (b + c)

	if x > 0 {
		fmt.Println(0)
	} else {
		fmt.Println(math.Abs(float64(x)))
	}

}
