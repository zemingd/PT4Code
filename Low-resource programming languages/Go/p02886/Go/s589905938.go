package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	sum := 0
	for i := range A {
		fmt.Scan(&A[i])
		sum += A[i]
	}
	res := 0
	for i := range A {
		res += A[i] * (sum - A[i])
	}
	fmt.Println(res / 2)
}

