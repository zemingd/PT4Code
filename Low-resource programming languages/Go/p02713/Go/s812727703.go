package main

import (
	"fmt"
)

func gcd(a, b uint64) uint64 {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var k uint64
	fmt.Scan(&k)
	var totalsum uint64 = 0
	var i, ii, iii uint64
	for i = 1; i < k+1; i++ {
		for ii = 1; ii < k+1; ii++ {
			for iii = 1; iii < k+1; iii++ {
				totalsum += gcd(gcd(i, ii), iii)
			}
		}
	}
	fmt.Println(totalsum)
}
