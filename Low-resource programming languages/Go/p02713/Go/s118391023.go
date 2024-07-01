package main

import (
	"fmt"
	"math/big"
)

type key struct {
	k1, k2 int64
}

var memo = make(map[key]int64)

func gcd(n, m int64) int64 {
	if v, ok := memo[key{n, m}]; ok {
		return v
	}

	x := new(big.Int)
	y := new(big.Int)
	res := new(big.Int)

	res.GCD(x, y, big.NewInt(n), big.NewInt(m))
	memo[key{n, m}] = res.Int64()
	return res.Int64()
}

func main() {
	var k int
	fmt.Scan(&k)

	var res int64
	for i := 1; i < k+1; i++ {
		for j := 1; j < k+1; j++ {
			for l := 1; l < k+1; l++ {
				res += gcd(gcd(int64(i), int64(j)), int64(l))
			}
		}
	}
	fmt.Println(res)
}
