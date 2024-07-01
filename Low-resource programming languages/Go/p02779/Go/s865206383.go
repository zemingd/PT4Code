package main

import (
	"fmt"
)

func main() {
	var N int
	var flag bool

	fmt.Scan(&N)
	A := make([]int, N, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&A[i])
	}
	for i := 0; i < N; i++ {
		if i == 0 {
			continue
		}
		for j := 0; j < i; j++ {
			if A[i] == A[j] {
				fmt.Println("NO")
				flag = true
				break
			}
		}
	}
	if flag == false {
		fmt.Println("YES")
	}
}
