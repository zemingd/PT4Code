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

	min := 200000

	for i := 0; i < a; i++ {
		for j := 0; j < b; j++ {
			total := listA[i] + listB[j]
			minM := 0
			for k := 0; k < m; k++ {
				if listX[k]-1 == i && listY[k]-1 == j {
					if minM < listC[k] {
						minM = listC[k]
					}
				}
			}
			total -= minM
			if min > total {
				min = total
			}
		}
	}

	fmt.Println(min)
}
