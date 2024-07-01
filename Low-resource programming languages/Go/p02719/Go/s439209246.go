package main

import "fmt"

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	if N%K == 0 {
		fmt.Println(0)
		return
	}
	fmt.Println(min(abs(N-K), abs(K-abs(N-K))))
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
