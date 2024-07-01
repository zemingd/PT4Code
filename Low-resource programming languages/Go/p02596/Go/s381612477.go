package main

import (
	"fmt"
	"math/big"
)

func main() {
	var k int

	fmt.Scan(&k)

	if k%2 == 0 {
		fmt.Print("-1")
	} else {
		i := 1
		ten := big.NewInt(10)
		seven := big.NewInt(7)
		kbig := big.NewInt(int64(k))
		for b := big.NewInt(7); ; {
			i++
			b.Mul(b, ten).Add(b, seven).Mod(b, kbig)
			if b.Int64() == 0 {
				fmt.Printf("%d", i)
				break
			}
		}
	}
}
