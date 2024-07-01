package main

import "fmt"

func main() {
	// Code for C - Skill Up
	var N, M, X int
	fmt.Scan(&N, &M, &X)

	C := make([]int, N)
	A := make([][]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&C[i])
		A[i] = make([]int, M)
		for j := 0; j < M; j++ {
			fmt.Scan(&A[i][j])
		}
	}

	var n int = N
	var money int
	var flag int
	var min int = 10000000000
	for i := 0; i < (1 << n); i++ {
		sum := make([]int, M)
		money = 0
		flag = 0
		for j := 0; j < n; j++ {
			if i>>j&1 == 1 {
				money += C[j]
				for k := 0; k < M; k++ {
					sum[k] += A[j][k]
				}
			}
		}

		for k := 0; k < M; k++ {
			if sum[k] < X {
				flag = 1
			}
		}
		if flag == 0 {
			if min > money {
				min = money
			}
		}
	}

	if min == 10000000000 {
		fmt.Println("-1")
	} else {
		fmt.Println(min)
	}
}
