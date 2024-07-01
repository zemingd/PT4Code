package main

import (
	"fmt"
	"math/big"
)

func main() {
	var k int

	fmt.Scan(&k)

	ten := big.NewInt(10)
	seven := big.NewInt(7)
	two := big.NewInt(2)
	five := big.NewInt(5)
	kbig := big.NewInt(int64(k))
	tmp1 := big.NewInt(0)
	tmp2 := big.NewInt(0)
	tmp3 := big.NewInt(0)

	if tmp3.Add(tmp3, kbig).Mod(tmp3, ten).Int64() == 0 {
		fmt.Print("-1")
		return
	}

	if tmp1.Add(tmp1, kbig).Mod(tmp1, two).Int64() == 0 || tmp2.Add(tmp2, kbig).Mod(tmp2, five).Int64() == 0 {
		fmt.Print("-1")
	} else {
		i := 0
		for b := big.NewInt(7); ; {
			i++
			if b.Int64() == 0 {
				fmt.Printf("%d", i)
				break
			}
			b.Mul(b, ten).Add(b, seven).Mod(b, kbig)
		}
	}
}
