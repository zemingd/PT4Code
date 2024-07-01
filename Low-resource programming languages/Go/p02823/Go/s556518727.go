package main

import "fmt"

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	var ans int
	if (B-A)%2 == 0 {
		ans = (B - A) / 2
	} else {
		ans = min(B-1, N-A)
	}
	fmt.Println(ans)
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
