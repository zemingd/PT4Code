package main

import (
	"fmt"
	"math"
	"math/big"
)

func numElem(n int, prime int) int {
	count := 0
	for i := 0; ; i++ {
		if (n % prime == 0) {
			count++
			n = n / prime
		} else {
			break
		}
	}
	return count
}

func numPow(n int) int {
	sum := 0
	for i := 1; ; i++ {
		sum = sum + i
		if (sum >= n) {
			return i
		}
	}
	return 0
}

func main() {
	var n int
	fmt.Scanf("%d", &n)

	var result = 0
	var last = int(math.Sqrt(float64(n)))
	// fmt.Printf("n = %d, last = %d\n", n, last)
	for i := 2; i < last; i++ {
		if (!big.NewInt(int64(i)).ProbablyPrime(0)) {
			continue
		}
		// fmt.Printf("i = %d\n", i)
		tmp := numElem(n, i)
		// fmt.Printf("numElem = %d\n", tmp)
		result = result + numPow(tmp)
		// fmt.Printf("%d\n", tmp)
	}

	fmt.Printf("%d", result)
}
