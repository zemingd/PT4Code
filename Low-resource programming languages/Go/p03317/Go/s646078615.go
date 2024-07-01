package main

import (
	"fmt"
)

func main() {
	var N, K int

	fmt.Scan(&N, &K)
	fmt.Println(((N - 1) + (K - 2)) / (K - 1))
}