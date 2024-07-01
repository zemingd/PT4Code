package main

import (
	"fmt"
	"math"
)

func isPrime(n int) bool {
	if n == 1 || n == 2 {
		return true
	}
	for i := 2; i <= int(math.Sqrt(float64(n))); i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var X int
	fmt.Scan(&X)
	for i := X; ; i++ {
		if isPrime(i) {
			fmt.Println(i)
			return
		}
	}
}
