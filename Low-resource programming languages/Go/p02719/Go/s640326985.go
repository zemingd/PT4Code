package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	x := N % K
	y := K - x

	if x > y {
		fmt.Println(y)
		return
	}
	fmt.Println(x)
}
