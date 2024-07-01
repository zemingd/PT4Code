package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
	}

	fmt.Println(solve(n, a))
}

func solve(n int, a []int) int {
	sum := 0
	max := a[0]

	for i := 0; i < n; i++ {
		max = maxInt(max, a[i])
		sum += (max - a[i])
	}

	return sum
}

func maxInt(a, b int) int {
	if a >= b {
		return a
	}

	return b
}
