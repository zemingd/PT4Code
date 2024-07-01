package main

import "fmt"

func main() {
	var k, n int
	fmt.Scan(&k, &n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	d1 := a[n-1] - a[0]
	d2 := k - a[n-1] + a[n-2]
	ans := min(d1, d2)
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
