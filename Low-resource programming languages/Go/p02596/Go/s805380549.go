package main

import (
	"fmt"
)

var m = map[int]map[int]bool{}

func main() {
	var K int
	fmt.Scan(&K)
	ctr := 1
	sum := 7
	e := 1
	k := 10 % K
	for {
		if sum%K == 0 {
			fmt.Println(ctr)
			return
		}
		// e = new(big.Int).Exp(big.NewInt(10), big.NewInt(int64(ctr)), big.NewInt(int64(K)))
		e = (e % K) * k
		diff := (7 % K) * (e % K)
		// if diff == 0 {
		// 	fmt.Println(-1)
		// 	return
		// }
		if v, ok := m[sum]; ok {
			if v[diff] {
				fmt.Println(-1)
				return
			}
			m[sum][diff] = true
		} else {
			m[sum] = map[int]bool{diff: true}
		}
		sum += diff
		ctr++
	}
}
