package main

import "fmt"

var H []int
var T [][]int

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	H = make([]int, N)
	T = make([][]int, N)
	for i := 0; i < N; i++ {
		var V int
		fmt.Scan(&V)
		H[i] = V
		T[i] = []int{}
	}
	for i := 0; i < M; i++ {
		var A, B int
		fmt.Scan(&A, &B)
		T[A-1] = append(T[A-1], B-1)
		T[B-1] = append(T[B-1], A-1)
	}
	ans := make(map[int]bool)
	for i := 0; i < N; i++ {
		highest := H[i]
		flag := true
		for _, node := range T[i] {
			if highest <= H[node] {
				flag = false
				break
			}
		}
		if flag {
			ans[i] = true
		}
	}
	fmt.Println(len(ans))
}
