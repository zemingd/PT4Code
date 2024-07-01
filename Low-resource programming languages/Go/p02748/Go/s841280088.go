package main

import "fmt"

func main() {
	var a, b, m int
	fmt.Scanf("%d %d %d", &a, &b, &m)
	A := make([]int, a)
	B := make([]int, b)
	for i := 0; i < a; i++ {
		fmt.Scan(&A[i])
	}
	for i := 0; i < b; i++ {
		fmt.Scan(&B[i])
	}
	prices := make([]int, m+1)
	prices[0] = min(A) + min(B)
	var x, y, c int
	for i := 1; i < m+1; i++ {
		fmt.Scanf("%d %d %d", &x, &y, &c)
		prices[i] = A[x-1] + B[y-1] - c
	}
	fmt.Println(min(prices))
}

func min(list []int) int {
	result := list[0]
	for i := 1; i < len(list); i++ {
		if result > list[i] {
			result = list[i]
		}
	}
	return result
}
