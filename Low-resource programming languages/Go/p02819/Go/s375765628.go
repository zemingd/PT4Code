package main

import (
	"fmt"
)

var x int

func main() {
	fmt.Scan(&x)

	for {
		x++
		if isPrime(x) {
			fmt.Print(x)
			return
		}
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
