package main

import "fmt"

func main() {
	var H, N int
	fmt.Scanf("%d %d", &H, &N)
	A := make([]int, N)
	sum := 0
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A[i])
		sum += A[i]
	}
	if H > sum {
		fmt.Println("No")
	} else if H == sum {
		fmt.Println("Yes")
	} else {
		fmt.Println("Yes")
	}
}
