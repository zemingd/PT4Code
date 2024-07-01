package main

import (
	"fmt"
	"math/big"
)

func main(){
	var N int64
	fmt.Scan(&N)

	// (N-1)(1 + N-1)/2
	// (N^2 - N)/2
	var i, e = big.NewInt(N), big.NewInt(2)
	i.Exp(i, e, nil)
	i.Sub(i, big.NewInt(N))
	i.Div(i, big.NewInt(2))
	fmt.Println(i)
}
