package main

import (
	"fmt"
	"math/big"
)

func main() {
	n := 0
	_, _ = fmt.Scan(&n)
	var v int64
	for i := 0; i < n; i++ {
		var tmp int64
		_, _ = fmt.Scan(&tmp)
		v = gcd(v, tmp)
	}
	fmt.Println(v)
}

func gcd(m, n int64) int64 {
	if m == 0 {
		return n
	} else if n == 0 {
		return m
	}
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetUint64(uint64(m))
	b := new(big.Int).SetUint64(uint64(n))
	return z.GCD(x, y, a, b).Int64()
}