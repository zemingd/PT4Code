package main

import (
	"fmt"
)

func isPrime(x int) bool {

	for i := 2; i < x; i++ {
		if x%i == 0 {
			return false
		}
	}
	return true
}
func main() {
	var x int
	fmt.Scan(&x)

	result := x

	for i := x; i < x*x; i++ {
		if isPrime(i) {
			result = i
			break
		}
	}

	fmt.Println(result)
}
