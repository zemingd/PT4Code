package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&A[i])
	}
	ans := 0
	for ind, num := range A {
		for j := ind + 1; j < len(A); j++ {
			if j-ind == abs(num-A[j]) {
				ans++
			}
		}
	}
	fmt.Println(ans)
}

func abs(a int) int {
	if a < 0 {
		return -a
	} else {
		return a
	}
}
