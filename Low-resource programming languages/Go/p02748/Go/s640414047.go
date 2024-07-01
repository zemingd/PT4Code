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
		if minA > listA[i] {
			minA = listA[i]
		}
	}
	for i := 0; i < b; i++ {
		if minB > listB[i] {
			minB = listB[i]
		}
	}
	total = minA + minB

	for i := 0; i < m; i++ {
		if total > listA[listX[i]-1]+listB[listY[i]-1]-listC[i] {
			total = listA[listX[i]-1] + listB[listY[i]-1] - listC[i]
		}
	}

	fmt.Println(total)
}
