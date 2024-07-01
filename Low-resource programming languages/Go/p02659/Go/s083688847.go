package main

import (
	"fmt"
	"math/big"
)

func main() {
	var a int64
	var b float64
	fmt.Scan(&a, &b)
	//bb := int64(b * 100)
	ba := big.NewFloat(float64(a))
	bb := big.NewFloat(b)

	ans := ba.Mul(bb, ba)

	fmt.Println(ans)
}
