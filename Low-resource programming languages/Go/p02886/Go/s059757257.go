package main

import (
	"fmt"
)

func main() {
	var N, r int
	fmt.Scan(&N)
	d := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&d[i])
	}
	for i := 0; i < len(d)-1; i++ {
		for j := i + 1; j < len(d); j++ {
			r += d[i] * d[j]
		}
	}
	fmt.Println(r)
}