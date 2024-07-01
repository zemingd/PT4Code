package main

import (
	"fmt"
	"math/big"
)

func gcd(m, n uint64) uint64 {
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetUint64(m)
	b := new(big.Int).SetUint64(n)
	return z.GCD(x, y, a, b).Uint64()
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
