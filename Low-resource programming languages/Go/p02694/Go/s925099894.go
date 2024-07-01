package main

import (
	"fmt"
	"math/big"
)

func main() {
	var x int
	fmt.Scanf("%d", &x)
	target := big.NewFloat(float64(x))

	year := 0
	current := big.NewFloat(100)
	ratio := big.NewFloat(1.01)

	for {
		year++

		current = current.Mul(current, ratio)

		comparison := current.Cmp(target)
		if comparison >= 0 {
			break
		}
	}

	fmt.Printf("%d", year)
}
