package main

import "fmt"

func main() {
	var N, M, sum int
	fmt.Scan(&N, &M)
	A := make([]int, N)
	for i:= range A {
		fmt.Scan(&A[i])
		sum += A[i]
	}

	if N >= sum {
		fmt.Print(N-sum)
	} else{
		fmt.Print(-1)
	}


}