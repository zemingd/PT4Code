package main

import (
	"fmt"
)

func main() {

	var A [3][3]int
	var flag [3][3]int
	for i := 0; i < 3; i++ {
		fmt.Scanf("%d %d %d", &A[i][0], &A[i][1], &A[i][2])
	}

	var N int
	fmt.Scanf("%d", &N)
	b := make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &b[i])
	}

	for k := 0; k < N; k++ {
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if A[i][j] == b[k] {
					flag[i][j] = 1
				}
			}
		}
	}

	var result int = 0
	for i := 0; i < 3; i++ {
		if flag[i][0] == 1 && flag[i][1] == 1 && flag[i][2] == 1 {
			result = 1
		}
	}

	for j := 0; j < 3; j++ {
		if flag[0][j] == 1 && flag[1][j] == 1 && flag[2][j] == 1 {
			result = 1
		}
	}
	if flag[0][0] == 1 && flag[1][1] == 1 && flag[2][2] == 1 {
		result = 1
	}
	if flag[0][2] == 1 && flag[1][1] == 1 && flag[2][0] == 1 {
		result = 1
	}

	if result == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
