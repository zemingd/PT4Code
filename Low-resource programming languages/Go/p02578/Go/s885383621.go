package main

import "fmt"

func main() {
	// Code for C - Step
	var N int
	fmt.Scanf("%d", &N)

	A := make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%f", &A[i])
	}

	var ans float64
	var temp float64 = A[0]
	for i := 1; i < N; i++ {
		if A[i]-temp < 0 {
			ans += -(A[i] - temp)
			//fmt.Println(i, -(A[i] - temp))
			temp = A[i] - (A[i] - temp)
		} else {
			temp = A[i]
		}
	}

	fmt.Println(int(ans))
}
