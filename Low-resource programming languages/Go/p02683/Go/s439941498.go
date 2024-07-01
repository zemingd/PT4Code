package main

import "fmt"

var (
	N, M, X int
	C       []int
	A       [][]int
)

func main() {
	fmt.Scan(&N, &M, &X)
	C = make([]int, 0, N)
	A = make([][]int, N)
	R := make([]int, M)

	for i := 0; i < N; i++ {
		var x int
		fmt.Scan(&x)
		C = append(C, x)
		for j := 1; j <= M; j++ {
			var y int
			fmt.Scan(&y)
			A[i] = append(A[i], y)
		}
	}

	res := rec(0, R)
	if res == 1000000000 {
		fmt.Println(-1)
		return
	} else {
		fmt.Println(res)
	}
}

func rec(i int, R []int) int {
	var res int
	flag := true
	for j := 0; j < M; j++ {
		if R[j] < X {
			flag = false
		}
	}
	if i == N && flag == false {
		res = 1000000000
	} else if flag == true {
		res = 0
	} else {
		t := make([]int, M)
		k := make([]int, M)
		for j, v := range R {
			t[j] = v
			k[j] = v + A[i][j]
		}
		a := rec(i+1, t)
		b := rec(i+1, k)
		if b == 1000000000 {
			res = 100000000
		} else {
			b += C[i]
		}
		if a > b {
			res = b
		} else {
			res = a
		}
	}
	return res
}
