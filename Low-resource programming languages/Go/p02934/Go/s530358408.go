package main

import (
	"fmt"
)

func main() {
	var (
		n   int
		sum float64
	)
	fmt.Scan(&n)
	a := make([]float64, n)
	for i := 0; i < len(a); i++ {
		fmt.Scan(&a[i])
		sum = sum + 1.0/a[i]
	}
	fmt.Println(1 / sum)
}
