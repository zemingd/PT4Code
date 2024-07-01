package main

import "fmt"

func main() {
	var a, b, m int
	fmt.Scanf("%d %d %d", &a, &b, &m)
	A := make([]int, a)
	B := make([]int, b)
	minA, minB := 100000, 100000
	for i := 0; i < a; i++ {
		fmt.Scan(&A[i])
		if A[i] < minA {
			minA = A[i]
		}
	}
	for i := 0; i < b; i++ {
		fmt.Scan(&B[i])
		if B[i] < minB {
			minB = B[i]
		}
	}
	minPrice := minA + minB
	price := 0
	var x, y, c int
	for i := 0; i < m; i++ {
		fmt.Scanf("%d %d %d", &x, &y, &c)
		price = A[x-1]+B[y-1]-c
		if minPrice > price {
			minPrice = price
		}
	}
	fmt.Println(minPrice)
}
