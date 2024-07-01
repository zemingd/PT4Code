package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)
	var answer int
	for a := x; ; a++ {
		if isPrime(a) {
			answer = a
			break
		}
	}
	fmt.Println(answer)
}

func isPrime(x int) bool {
	var upperBound int
	upperBound = int(math.Sqrt(float64(x)) + 1)
	for divider := 2; divider < upperBound; divider++ {
		if x%divider == 0 {
			return false
		}
	}
	return true
}
