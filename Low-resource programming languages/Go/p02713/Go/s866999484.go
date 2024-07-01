package main

import (
	"fmt"
	"math/big"
)

func main() {
	var k int
	fmt.Scanf("%d", &k)

	sum := big.NewInt(0)
	for x := 1; x <= k; x++ {
		bx := big.NewInt(int64(x))
		for y := 1; y <= k; y++ {
			by := big.NewInt(int64(y))
			t := big.NewInt(1)
			t.GCD(nil, nil, bx, by)
			for z := 1; z <= k; z++ {
				bz := big.NewInt(int64(z))
				s := big.NewInt(1)
				s.GCD(nil, nil, t, bz)
				sum.Add(sum, s)
			}
		}
	}

	fmt.Printf("%s\n", sum.String())
}
