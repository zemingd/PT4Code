package main

import (
	"fmt"
)

func main() {
	var N, K int

	fmt.Scanf("%d %d\n", &N, &K)
	if N%K == 0 {
		fmt.Println(0)
		return
	}
	x1 := N % K
	x2 := x1 - K
	if x2 < 0 {
		x2 = -x2
	}

	if x1 > x2 {
		fmt.Println(x2)
	} else {
		fmt.Println(x1)
	}
}
