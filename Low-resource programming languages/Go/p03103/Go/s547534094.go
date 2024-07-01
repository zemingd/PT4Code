package main

import (
	"fmt"
	// "sort"
)

func sort2d(arr [][]int) [][]int {
	for i := 0; i < len(arr)-1; i++ {
		for j := 0; j < len(arr)-i-1; j++ {
			if arr[j][0] < arr[j+1][0] {
				arr[j], arr[j+1] = arr[j+1], arr[j]
			}
		}
	}
	return arr
}

func main() {
	var N, M, ans, num int
	fmt.Scanf("%d %d", &N, &M)
	A := make([]int, N)
	B := make([]int, N)
	AB := make([][]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &A[i], &B[i])
		AB[i] = []int{A[i], B[i]}
	}
	sort2d(AB)

	for i := 0; i < N; i++ {
		var a, b int
		a = AB[i][0]
		b = AB[i][1]
		for j := 0; j < b; j++ {
			ans += a
			num++
			if num == M {
				fmt.Println(ans)
				return
			}
		}
	}
}