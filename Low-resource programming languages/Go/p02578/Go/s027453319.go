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
	var sum, max int

	for i := 0; i < n; i++ {
		if a[i] < max {
			sum += (max - a[i])
		} else {
			max = a[i]
		}
	}

	return sum
}
