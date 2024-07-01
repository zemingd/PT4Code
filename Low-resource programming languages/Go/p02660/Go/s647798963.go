package main

import (
	"fmt"
	"math"
)

type primeFactor struct {
	value int64
	count int
}

func primeFactorization(n int64) []primeFactor {
	p := make([]primeFactor, 0)
	temp := n

	sn := int64(math.Sqrt(float64(n)) + 1)
	for i := int64(2); i <= sn; i++ {
		if temp%i == 0 {
			var cnt int
			for temp%i == 0 {
				cnt++
				temp /= i
			}
			p = append(p, primeFactor{i, cnt})
		}
	}
	return p
}

func main() {
	var n int64
	fmt.Scanln(&n)

	if n == 1 {
		fmt.Println(0)
		return
	}

	p := primeFactorization(n)

	var prod int
	for _, v := range p {
		c := 1
		for v.count-c >= 0 {
			v.count -= c
			prod++
			c++
		}
	}
	fmt.Println(prod)
}
