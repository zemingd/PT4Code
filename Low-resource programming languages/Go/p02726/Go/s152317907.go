package main

import "fmt"

func main() {
	var n, x, y int
	fmt.Scan(&n, &x, &y)

	k := make([]int, 10000000)
	for i := 1; i < n; i++ {
		for j := i + 1; j <= n; j++ {
			d := dist(i, x) + dist(j, y) + 1
			k[min(d, j-i)]++
		}
	}

	for i := 1; i < n; i++ {
		fmt.Println(k[i])
	}
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func dist(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}
