package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	A := make([]int, N)
	B := make([]int, N)
	C := make([]int, N - 1)

	for i := 0; i < N; i++ {
		fmt.Scan(&A[i])
	}

	for i := 0; i < N; i++ {
		fmt.Scan(&B[i])
	}

	for i := 0; i < N - 1; i++ {
		fmt.Scan(&C[i])
	}


	res := 0
	for i := 0; i < N; i++ {
		res += B[i]
		if i > 0 && A[i] == A[i - 1] + 1 {
			res += C[A[i - 1] - 1]
		}
	}
	fmt.Println(res)

}