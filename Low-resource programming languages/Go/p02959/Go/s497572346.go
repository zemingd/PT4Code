package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n+1)
	b := make([]int, n)
	for i, _ := range a {
		fmt.Scan(&a[i])
	}
	for i, _ := range b {
		fmt.Scan(&b[i])
	}

	ans := 0
	for i := 0; i < n; i++ {
		if i != 0 {
			ans += min(b[i-1], a[i])
			a[i] -= min(b[i-1], a[i])
		}
		if a[i] < b[i] {
			ans += a[i]
			b[i] -= a[i]
		} else {
			ans += b[i]
			b[i] = 0
		}
		if i == n-1 {
			ans += min(b[i], a[i])
		}
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}