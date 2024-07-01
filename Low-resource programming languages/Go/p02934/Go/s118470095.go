package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A[i])
	}
	bunsi := 1.0
	for _, a := range A {
		bunsi *= float64(a)
	}
	B := make([]float64, N)
	for i := 0; i < N; i++ {
		B[i] = 1
	}
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			if i == j {
				continue
			}
			B[j] *= float64(A[i])
		}
	}
	bunbo := 0.0
	for i := 0; i < N; i++ {
		bunbo += B[i]
	}
	fmt.Println(bunsi / bunbo)
}
