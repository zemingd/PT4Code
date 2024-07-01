package main

import "fmt"

func main() {
	var N, K int
	var x, y int
	var sum int

	fmt.Scan(&N)
	fmt.Scan(&K)
	fmt.Scan(&x)
	fmt.Scan(&y)

	for i := 1; i <= N; i++ {
		if i > K {
			sum += y
		} else {
			sum += x
		}
	}

	fmt.Println(sum)
}
