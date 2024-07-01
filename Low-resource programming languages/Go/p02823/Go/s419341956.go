package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	if a%2 == b%2 {
		fmt.Println(abs(a-b) / 2)
		return
	}
	v1 := min(max(a-1, b-1), max(n-a, n-b))

	d1 := a - 1 + 1
	b2 := b - d1
	a2 := 1

	d2 := n - b + 1
	a3 := a + d2
	b3 := n
	v2 := min((b2-a2)/2+d1, (b3-a3)/2+d2)
	fmt.Println(min(v1, v2))
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
