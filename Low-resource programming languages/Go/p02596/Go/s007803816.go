package main

import (
	"fmt"
	"math/big"
)

func main() {
	var K int
	fmt.Scan(&K)
	ctr := 1
	sum := 7
	for {
		if sum%K == 0 {
			fmt.Println(ctr)
			return
		}
		e := new(big.Int).Exp(big.NewInt(10), big.NewInt(int64(ctr)), big.NewInt(int64(K)))
		diff := (int64(7 % K)) * e.Int64()
		if diff == 0 {
			fmt.Println(-1)
			return
		}
		sum += int(diff)
		ctr++
	}
}
