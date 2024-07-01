package main

import (
	"fmt"
	"math/big"
)

const BigPrec = 1024

func main() {
	n := float64(100000)
	k := float64(5)
	prob := big.NewFloat(float64(0)).SetPrec(BigPrec)
	for i := float64(1); i <= n; i++ {
		point := float64(i)
		tmp := new(big.Float).SetPrec(BigPrec).Mul(big.NewFloat(1), big.NewFloat(n))
		for {
			//fmt.Println(point)
			if point >= float64(k) {
				break
			}
			point *= 2
			tmp.Mul(tmp, big.NewFloat(2))
		}
		prob.Add(prob, new(big.Float).SetPrec(BigPrec).Quo(big.NewFloat(1), tmp))
	}
	fmt.Println(prob.Text(byte('f'), 512))
}
