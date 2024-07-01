package main

import "fmt"

func main() {
	var (
		N int
	)

	fmt.Scan(&N)

	var denominator float64
	var one float64 = 1
	for i := 0; i < N; i++ {
		var A float64
		fmt.Scan(&A)
		denominator += one / A
	}

	fmt.Println(one / denominator)
}
