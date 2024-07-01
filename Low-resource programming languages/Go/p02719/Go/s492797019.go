package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	result := n % k
	fmt.Println(min(result, k-result))
}
