package main

import (
	"errors"
	"fmt"
	"math"
)

type int int64


func main() {

	var A,B int
	fmt.Scan(&A,&B)


	var gcd int
	gcd, _ = GCD(A,B)

	var ans []int
	ans = PrimeFactors(gcd)


	fmt.Println(len(ans) + 1)

}

func GCD(a, b int) (int, error) {
	ret := int(-1)

	var n int
	for n = 1; n*n <= a; n++ {
		if a%n == 0 {
			if b%n == 0 {
				ret = int(math.Max(float64(n), float64(ret)))
			}

			t := a / n
			if b%t == 0 {
				ret = int(math.Max(float64(t), float64(ret)))
			}
		}
	}

	if ret == -1 {
		return ret, errors.New("empty!")
	} else {
		return ret, nil
	}
}

func PrimeFactors(n int) (pfs []int) {
	// Get the number of 2s that divide n
	for n%2 == 0 {
		pfs = append(pfs, 2)
		n = n / 2
	}

	// n must be odd at this point. so we can skip one element
	// (note i = i + 2)
	var i int
	for i = 3; i*i <= n; i = i + 2 {
		// while i divides n, append i and divide n
		for n%i == 0 {
			pfs = append(pfs, i)
			n = n / i
		}
	}

	// This condition is to handle the case when n is a prime number
	// greater than 2
	if n > 2 {
		pfs = append(pfs, n)
	}

	return
}