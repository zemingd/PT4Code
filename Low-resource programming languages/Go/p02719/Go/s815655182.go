package main

import "fmt"

func min(x, y int64) int64 {
	if x < y {
		return x
	}
	return y
}

func main() {
	var N, K int64
	fmt.Scan(&N, &K)

	fmt.Println(min(N%K, K-N%K))
}
