package main

import "fmt"

func main() {
	var N, K, X, Y, sum int
	fmt.Scan(&N)
	fmt.Scan(&K)
	fmt.Scan(&X)
	fmt.Scan(&Y)

	if K >= N {
		sum = N * X
	} else {
		sum = K*X + (N-K)*Y
	}
	fmt.Println(sum)
}
