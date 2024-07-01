package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scanf("%d", &x)

	for x < math.MaxInt32 {
		if isPrime(x) {
			fmt.Println(x)
			return
		}
		x++
	}
}

func isPrime(n int) bool {
	if n <= 1 {
		return false
	}

	if n == 2 {
		return true
	}

	if n%2 == 0 {
		return false
	}

	r := true
	for i := 3; i <= int(math.Floor(math.Sqrt(float64(n)))); i += 2 {
		if n%i == 0 {
			r = false
		}
	}
	return r
}
