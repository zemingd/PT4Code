package main

import (
	"fmt"
	"math"
)

func isPrime(N float64) bool {
	end := int(math.Sqrt(N) + 1)
	for i := 2; i < end; i++ {
		if int(N)%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var N int
	fmt.Scan(&N)

	for n := N; n <= 100003; n++ {
		if isPrime(float64(n)) {
			fmt.Println(n)
			break
		}
	}
}
