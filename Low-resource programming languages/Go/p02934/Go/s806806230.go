package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	A := make([]int, n)
	for i:=0; i<n;i++ {
		fmt.Scan(&A[i])
	}
	var sum float64
	for i:=0; i<n;i++ {
		sum += 1 / float64(A[i])
	}
	ans := 1 / sum
	fmt.Println(ans)
}