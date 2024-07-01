package main

import "fmt"

func main() {
	var K, S, r int
	fmt.Scan(&K, &S)
	for i := 0; i <= K; i++ {
		for j := max(S-i-K, 0); j <= min(K, S-i); j++ {
			r++
		}
	}
	fmt.Println(r)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
