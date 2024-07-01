package main

import "fmt"

func main() {
	var N, M, X int
	fmt.Scanf("%d %d %d", &N, &M, &X)

	C := make([]int, N)
	A := make([][]int, N)
	for i := 0; i < N; i++ {
		A[i] = make([]int, M)
		fmt.Scanf("%d", &C[i])
		for j := 0; j < M; j++ {
			fmt.Scanf("%d", &A[i][j])
		}
	}

	NMAX := 1000000000000
	min := NMAX

	for bit := 0; bit < 1<<N; bit++ {
		understand := make([]int, M)
		cost := 0
		for i := 0; i < N; i++ {
			if bit>>i&1 == 1 {
				for j := 0; j < M; j++ {
					understand[j] += A[i][j]
				}
				cost += C[i]
			}
		}
		success := true
		for i := 0; i < M; i++ {
			if understand[i] < X {
				success = false
				break
			}
		}
		if success {
			if cost < min {
				min = cost
			}
		}
	}
	if min == NMAX {
		fmt.Println(-1)
		return
	}
	fmt.Println(min)
}
