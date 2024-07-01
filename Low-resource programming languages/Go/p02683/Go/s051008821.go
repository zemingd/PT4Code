package main

import (
	"fmt"
	"math"
)

func main() {
	var N, M, X int
	fmt.Scan(&N, &M, &X)
	C := make([]int, N)
	A := make([][]int, N)
	var num, c int
	for i := 0; i < N; i++{
		a := make([]int, M)
		fmt.Scan(&c)
		C[i] = c
		for j := 0; j < M; j++{
			fmt.Scan(&num)
			a[j] = num
		}
		A[i] = a
	}
	
	n := N

	var a float64 = 10000000
	res := a
	
	for i := 0; i < (1<<uint64(n)); i++ {
		exp := make([]int, M)
		amount := 0
		for j:= 0; j < n; j++ {
			if (i >> uint64(j))&1 == 1 {
				for k := 0; k < M; k++ {
					exp[k] = exp[k] + A[j][k]
				}
				amount += C[j]

			}
			ok := true
			for l := 0; l < M; l++{
				if exp[l] < X{
					ok = false
				}
			}
			if ok {
				res = math.Min(float64(res), float64(amount))
			}

		}
	}

	if res == a {
		res = -1
	}

	fmt.Println(res)
}
