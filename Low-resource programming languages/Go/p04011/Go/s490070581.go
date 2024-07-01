package main;

import "fmt"

func main() {
	var N, K, X, Y int
	fmt.Scan(&N, &K, &X, &Y)
	fmt.Println(K * X + (N - K) * Y)

}

func min(a int, b int) int {
	if a < b {
		return a
	}
	return b
}
