package main

import (
	"fmt"
	"math/big"
)

func main() {
	var a, b, c int64
	fmt.Scan(&a, &b, &c)
	if Sqrt(a, 1000)+Sqrt(b, 1000) < Sqrt(c, 1000) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func Sqrt(n int64, precision int64) uint64 {
	limit := new(big.Int).Exp(big.NewInt(10), big.NewInt(precision+1), nil)
	a := big.NewInt(5 * n)
	b := big.NewInt(5)
	five := big.NewInt(5)
	ten := big.NewInt(10)
	hundred := big.NewInt(100)

	for b.Cmp(limit) < 0 {
		if a.Cmp(b) < 0 {
			a.Mul(a, hundred)
			tmp := new(big.Int).Div(b, ten)
			tmp.Mul(tmp, hundred)
			b.Add(tmp, five)
		} else {
			a.Sub(a, b)
			b.Add(b, ten)
		}
	}
	b.Div(b, hundred)

	return b.Uint64()
}
