package main

import "fmt"

func min(a int, b int) int {
	if a <= b {
		return a
	}
	return b
}

func max(a int, b int) int {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n+1)
	b := make([]int, n)
	for i := 0; i < n+1; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}

	cnt := 0
	for i := 0; i < n; i++ {
		if a[i] >= b[i] {
			cnt += b[i]
		} else {
			cnt += a[i]
			tmp := a[i+1]
			a[i+1] = max(a[i+1]-(b[i]-a[i]), 0)
			cnt += tmp - a[i+1]
		}
	}
	fmt.Println(cnt)
}
