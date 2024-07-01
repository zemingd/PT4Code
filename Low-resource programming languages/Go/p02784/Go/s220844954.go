package main

import (
	"fmt"
)

func main() {

	var H, N int
	fmt.Scanf("%d %d", &H, &N)

	A := make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A[i])
		H = H - A[i]
	}
	if H <= 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
