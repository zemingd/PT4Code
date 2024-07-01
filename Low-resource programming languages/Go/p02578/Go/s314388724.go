package main

import "fmt"

func main() {
	var n int
	var a [100001]int64

	fmt.Scanf("%n", &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
	}

	fmt.Println(solve(n, a))
}

func solve(n int, a [100001]int64) int64 {
	var sum, max int64

	for i := 0; i < n; i++ {
		max = maxInt64(max, a[i])
		if a[i] < max {
			sum += (max - a[i])
		}
	}

	return sum
}

func maxInt64(a, b int64) int64 {
	if a >= b {
		return a
	}

	return b
}
