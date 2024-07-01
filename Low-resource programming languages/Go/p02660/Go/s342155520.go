package main

import (
	"fmt"
	"math"
)

// go run ./main.go < in

func main() {
	var n int
	fmt.Scan(&n)

	var ps []int
	for i := 1; i <= n; i++ {
		if isPrime(i) {
			ps = append(ps, i)
		}
	}

	fmt.Println(ps)

	count := 0
	for k := 1; k < n; k++ {
		for _, v := range ps {
			a := math.Pow(float64(v), float64(k))
			if n%int(a) == 0 {
				n /= int(a)
				count++
			}
			if a > float64(v) {
				break
			}
		}
	}

	fmt.Println(count)
}

func isPrime(x int) bool {
	if x == 1 {
		return false
	}
	if x == 2 {
		return true
	}

	b := true
	for i := 2; i < x; i++ {
		if x%i == 0 {
			b = false
			break
		}
	}
	return b
}
