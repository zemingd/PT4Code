package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	V := make([]int, 0, N)
	C := make([]int, 0, N)
	var input int
	for i := 0; i < N; i++ {
		fmt.Scan(&input)
		V = append(V, input)
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&input)
		C = append(C, input)
	}
	for i := 0; i < N; i++ {
		V[i] = V[i] - C[i]
	}
	value := 0
	for _, v := range V {
		if v > 0 {
			value += v
		}
	}
	fmt.Println(value)

}