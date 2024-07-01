package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	count := 1
	for N/K != 0 {
		N /= K
		count++
	}
	fmt.Println(count)
}
