package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	var sum float64
	for i := 0; i < n; i++ {
		sum += 1 / a[i]
	}

	fmt.Println(1 / sum)
}
