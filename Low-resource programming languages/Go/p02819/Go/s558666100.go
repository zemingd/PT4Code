package main

import (
	"fmt"
	"math"
)

func isPrime(n int) bool {
	var tmp float64 = float64(n)
	rng := int(math.Ceil(math.Sqrt(tmp)))
	// fmt.Printf("rng = %d, n = %d, jajaja = %f\n", rng, n, math.Sqrt(float64(n)))
	for i := 2; i < rng; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var x int
	fmt.Scan(&x)
	for i := x; i < 100004; i++ {
		if isPrime(i) {
			fmt.Println(i)
			break
		}
	}
}
