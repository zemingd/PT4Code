package main

import (
	"fmt"
)

func main() {
	var A [3][3]int
	var N int
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Scan(&A[i][j])
		}
	}
	fmt.Scan(&N)
	for N > 0 {
		N--
		var b int
		fmt.Scan(&b)
		for i := 0; i < 3; i++ {
			for j := 0; j < 3; j++ {
				if A[i][j] == b {
					A[i][j] = 0
				}
			}
		}
	}
	fmt.Println(check(A))
}

func check(A [3][3]int) string {
	for i := 0; i < 3; i++ {
		if A[i][0]+A[i][1]+A[i][2] == 0 {
			return "Yes"
		}
		if A[0][i]+A[1][i]+A[2][i] == 0 {
			return "Yes"
		}
	}
	if A[0][0]+A[1][1]+A[2][2] == 0 {
		return "Yes"
	}
	if A[0][2]+A[1][1]+A[2][0] == 0 {
		return "Yes"
	}
	return "No"
}
