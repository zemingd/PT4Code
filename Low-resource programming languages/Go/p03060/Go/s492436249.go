package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	V := make([]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &V[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &C[i])
	}
	sum := 0
	for i := 0; i < N; i++ {
		if V[i]-C[i] > 0 {
			sum += V[i] - C[i]
		}
	}
	fmt.Println(sum)
}
