package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d%d", &N, &K)
	var a int
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &a)
	}
	i := 0
	for {
		i++
		N -= K
		if N <= 0 {
			break
		}
		N++
	}
	fmt.Printf("%d\n", i)
	return
}
