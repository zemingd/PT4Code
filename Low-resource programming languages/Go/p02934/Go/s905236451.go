package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	list := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}

	total := 0.0
	for i := 0; i < n; i++ {
		total += 1.0 / list[i]
	}
	fmt.Println(1.0 / total)

}
