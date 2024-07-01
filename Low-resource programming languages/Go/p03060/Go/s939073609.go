package main

import (
	"fmt"
)

func main() {
	var N, r int
	fmt.Scan(&N)
	va := make([]int, N)
	ca := make([]int, N)
	for i := range va {
		fmt.Scan(&va[i])
	}
	for i := range ca {
		fmt.Scan(&ca[i])
	}
	for i := 0; i < N; i++ {
		if va[i] > ca[i] {
			r += va[i] - ca[i]
		}
	}
	fmt.Println(r)
}