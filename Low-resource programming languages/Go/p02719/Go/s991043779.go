package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	min := 999999999999

	if k == 1 {
		fmt.Println(0)
		return
	}

	for i := 0; i < n/k+30; i++ {
		n = abs(n - k)
		min = Min(min, n)
	}
	fmt.Println(min)
}

func abs(a int) int {
	if a < 0 {
		return a * (-1)
	}
	return a
}

func Min(a, b int) int {
	if a > b {
		return b
	}
	return a
}