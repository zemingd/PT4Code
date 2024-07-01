package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&b[i])
	}
	a[0], a[n-1] = b[0], b[n-2]
	ans := a[0] + a[n-1]
	for i := 1; i < n-1; i++ {
		a[i] = min(b[i], b[i-1])
		ans += a[i]
	}
	fmt.Println(ans)
}
