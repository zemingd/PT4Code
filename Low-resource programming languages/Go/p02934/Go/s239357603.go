package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]float64, n)
	ret := 0.0
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		ret += 1.0 / a[i]
	}
	fmt.Println(1.0 / ret)
}
