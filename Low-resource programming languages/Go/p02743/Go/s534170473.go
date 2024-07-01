package main

import "fmt"
import "math/big"

func main() {
	var a, b, c float64
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	ba := big.NewFloat(a)
	bb := big.NewFloat(b)
	bc := big.NewFloat(c)

	sa := new(big.Float).SetPrec(1024).Sqrt(ba)
	sb := new(big.Float).SetPrec(1024).Sqrt(bb)
	sc := new(big.Float).SetPrec(1024).Sqrt(bc)

	sab := new(big.Float).SetPrec(1024).Add(sa, sb)
	res := sab.Cmp(sc)

	if res < 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
