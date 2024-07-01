package main

import "fmt"

func main() {
	var N int
	var M int
	var X int
	fmt.Scanf("%v %v %v", &N, &M, &X)
	C := make([]int, N)
	A := make([][]int, N) // A[N][M]でアクセス
	for i := 0; i < N; i++ {
		A[i] = make([]int, M)
	}
	for i := 0; i < N; i++ {
		fmt.Scanf("%v", &C[i])
		for j := 0; j < M; j++ {
			fmt.Scanf("%v", &A[i][j])
		}
	}

	idx := make([]interface{}, N)
	for i := 0; i < N; i++ {
		idx[i] = i
	}

	// 全て足し、達成できるかを判定
	var min int
	min = solve(N, M, X, C, A, idx)
	if min == -1 {
		fmt.Printf("-1\n")
		return
	}

	permute := Permute(idx)
	for _, p := range permute {
		v := solve(N, M, X, C, A, p)
		if v < min {
			min = v
		}
	}

	fmt.Printf("%v\n", min)
}

// orderの順に足していって、全てがXを超えた時の金額を返す。超えなかったら-1を返す
func solve(N int, M int, X int, C []int, A[][]int, order []interface{}) int {
	sum := make([]int, M)
	var clear bool
	c := 0
	for i := 0; i < N; i++ {
		idx := order[i].(int)

		clear = true
		for j := 0; j < M; j++ {
			sum[j] += A[idx][j]
			if sum[j] < X {
				clear = false
			}
		}
		c += C[idx]
		if clear {
			return c
		}
	}
	return -1
}


func Permute(L []interface{}) (result [][]interface{}) {

	if len(L) == 0 {
		result = append(result, []interface{}{}) //
	}
	for idx, r := range L {
		for _, t := range Permute(append(append([]interface{}{}, L[:idx]...), L[idx+1:]...)) {
			result = append(result, append([]interface{}{r}, t...))
		}
	}
	return result
}


// dstにsrcを足す
func add(dst []int, src []int) {
	if len(dst) != len(src) {
		panic("len error")
	}
	for i := 0; i < len(dst); i++ {
		dst[i] += src[i]
	}
}
