package main

import (
	"fmt"
	"math"
)

func isPrime(x int) bool {
	if x==2 {
		return true
	}
	if x%2==0 {
		return false
	}

	for i:=3; i<int(math.Sqrt(float64(x))); i+=2 {
		if x%i == 0 {
			return false
		}
	}

	return true
}

func main() {
	var x int
	fmt.Scan(&x)

	for i:=x;; i++ {
		if isPrime(i) {
			fmt.Println(i)
			break
		}
	}
}