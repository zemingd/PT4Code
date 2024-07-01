package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	V := make([]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&V[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&C[i])
	}

	ans := 0
	for i := 0; i < N; i++ {
		x := V[i] - C[i]
		if 0 <= x {
			ans += x
		}
	}
	fmt.Println(ans)
}
