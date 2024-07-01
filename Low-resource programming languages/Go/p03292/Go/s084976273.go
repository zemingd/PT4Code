package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for A - Task Scheduling Problem
	A := make([]int, 3)
	fmt.Scanf("%d %d %d", &A[0], &A[1], &A[2])

	fmt.Println(math.Max(math.Max(math.Abs(float64(A[1])-float64(A[0])), math.Abs(float64(A[2])-float64(A[0]))), math.Abs(float64(A[1])-float64(A[2]))))

}
