package main

import (
	"fmt"
)

func main() {
	var (
		a, b int
	)
	fmt.Scan(&a, &b)
	m := 1
	i := 0
	for m < b {
		m = m + a - 1
		i++
	}
	fmt.Println(i)
}
