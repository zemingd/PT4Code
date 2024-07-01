package main

import (
	"fmt"
)

func main() {
	var a, b, m int
	fmt.Scan(&a, &b, &m)

	listA := make([]int, a)
	listB := make([]int, b)
	listC := make([]int, m)
	listX := make([]int, m)
	listY := make([]int, m)
	for i := 0; i < a; i++ {
		fmt.Scan(&listA[i])
	}
	for i := 0; i < b; i++ {
		fmt.Scan(&listB[i])
	}
	for i := 0; i < m; i++ {
		fmt.Scan(&listX[i], &listY[i], &listC[i])
	}

	minA := 100000
	minB := 100000
	total := 0
	for i := 0; i < a; i++ {
		minA = min(minA, listA[i])
	}
	for i := 0; i < b; i++ {
		minB = min(minB, listB[i])
	}
	total = minA + minB

	totalW := 0
	for i := 0; i < m; i++ {
		totalW = listA[listX[i]-1] + listB[listY[i]-1] - listC[i]
		total = min(total, totalW)
	}

	fmt.Println(total)
}

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}
