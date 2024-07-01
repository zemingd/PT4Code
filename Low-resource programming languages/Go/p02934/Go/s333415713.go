package main

import "fmt"

func main() {

	var N int
	var A float64
	fmt.Scan(&N)
	var sum float64

	for i := 0; i < N; i++ {
		fmt.Scan(&A)
		sum = sum + (1 / A)
	}
	fmt.Println(1 / sum)
}
