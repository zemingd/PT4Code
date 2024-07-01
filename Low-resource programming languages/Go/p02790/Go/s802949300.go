package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var stringA, stringB int
	for i := 0; i < b; i++ {
		stringA += a * int(math.Pow(10, float64(i)))
	}
	for i := 0; i < a; i++ {
		stringB += b * int(math.Pow(10, float64(i)))
	}
	if stringA >= stringB {
		fmt.Println(stringA)
	} else {
		fmt.Println(stringB)
	}
}
