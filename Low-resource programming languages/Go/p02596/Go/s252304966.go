package main

import (
	"fmt"
)

func main() {
	var K int
	fmt.Scan(&K)
	ctr := 1
	sum := 7
	e := 1
	for {
		if sum%K == 0 {
			fmt.Println(ctr)
			return
		}
		// e = new(big.Int).Exp(big.NewInt(10), big.NewInt(int64(ctr)), big.NewInt(int64(K)))
		e = (e % K) * (10 % K)
		diff := (7 % K) * (e % K)
		if diff == 0 {
			fmt.Println(-1)
			return
		}
		sum += int(diff)
		ctr++
	}
}
