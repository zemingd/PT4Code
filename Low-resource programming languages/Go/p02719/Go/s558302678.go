package main

import "fmt"

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	t := N % K
	fmt.Println(min(t, abs(K-t)))
}
func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
