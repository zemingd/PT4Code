package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	V := make([]int, N)
	for i := range V {
		fmt.Scan(&V[i])
	}
	C := make([]int, N)
	for i := range C {
		fmt.Scan(&C[i])
	}

	res := 0
	for i := 0; i < (1 << uint(N)); i++ {
		x := 0
		y := 0
		for j := 0; j < N; j++ {
			if (i >> uint(j)) & 1 > 0 {
				x += V[j]
				y += C[j]
			}
		}
		if x - y > res {
			res = x - y
		}
	}
	fmt.Println(res)
}
