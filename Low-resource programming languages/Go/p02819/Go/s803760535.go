package main

import (
	"fmt"
)

var x int

func main() {
	fmt.Scan(&x)

	for {
		if isPrime(x) {
			fmt.Print(x)
			return
		}
		x++
	}
}

func isPrime(n int) bool {
	for i := 2; i < n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}
