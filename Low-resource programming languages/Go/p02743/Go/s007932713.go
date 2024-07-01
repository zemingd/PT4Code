package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)

	if c > a+b && 4*a*b < math.Pow(c-a-b, 2) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
