package main

import "fmt"

func main(){

	var N, K, X, Y int
	fmt.Scan(&N)
	fmt.Scan(&K)
	fmt.Scan(&X)
	fmt.Scan(&Y)

	var sum int
	for i := 1; i <= N; i++ {
		if i <= K {
			sum += X
		} else {
			sum += Y
		}
	}
	fmt.Print(sum)
}
