package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	ans := (N - 1) / (K - 1)
	if (N-1)%(K-1) != 0 {
		ans++
	}
	fmt.Println(ans)
}
