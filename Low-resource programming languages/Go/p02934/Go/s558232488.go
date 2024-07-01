package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	var a, b float64
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		b += 1.0 / a
	}
	fmt.Println(1 / b)
}
