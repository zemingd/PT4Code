package main

import (
	"fmt"
)

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	cnt := 0
	for i := A; i <= B; i++ {
		b := false
		if cnt < K {
			fmt.Println(i)
			b = true
		}
		if B-(A+cnt) < K && !b {
			fmt.Println(i)
		}
		cnt++
	}
}