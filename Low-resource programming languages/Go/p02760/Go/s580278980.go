package main

import "fmt"

func main() {
	A := make([][]int, 3)
	for i := 0; i < 3; i++ {
		A[i] = make([]int, 3)
		for j := 0; j < 3; j++ {
			fmt.Scanf("%d", &A[i][j])
		}
	}
	var N int
	fmt.Scanf("%d", &N)
	for i := 0; i < N; i++ {
		var b int
		fmt.Scanf("%d", &b)
		for j := 0; j < 3; j++ {
			for k := 0; k < 3; k++ {
				if A[j][k] == b {
					A[j][k] = 0
				}
			}
		}
	}
	for i := 0; i < 3; i++ {
		bingo := true
		for j := 0; j < 3; j++ {
			if A[i][j] != 0 {
				bingo = false
				break
			}
		}
		if bingo {
			fmt.Println("Yes")
			return
		}
		bingo = true
		for j := 0; j < 3; j++ {
			if A[j][i] != 0 {
				bingo = false
				break
			}
		}
		if bingo {
			fmt.Println("Yes")
			return
		}
	}
	if A[0][0] == 0 && A[1][1] == 0 && A[2][2] == 0 {
		fmt.Println("Yes")
		return
	}
	if A[2][0] == 0 && A[1][1] == 0 && A[0][2] == 0 {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")

}
