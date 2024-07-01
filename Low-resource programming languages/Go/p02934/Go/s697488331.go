package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	sum := 0.0
	for i := 0; i < N; i++ {
		var x float64
		fmt.Scan(&x)
		sum += 1.0 / x
	}

	fmt.Println(1.0 / sum)
}
