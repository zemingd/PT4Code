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
	const p = 1000_000_000 + 7

	sum := 0
	tmp := 0

	for i := N - 2; i >= 0; i-- {

		tmp += A[i+1]
		sum += A[i] * tmp
	}
	//fmt.Println(sum)

	fmt.Println(sum % p)

}
