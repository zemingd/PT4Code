package main

import (
	"fmt"
	"sort"
)

func main() {

	var N, R int
	fmt.Scanf("%d %d\n", &N, &R)

	if N < 10 {
		R += 100 * (10 - N)
	}
	fmt.Println(R)
}