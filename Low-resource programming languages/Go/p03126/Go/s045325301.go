package main

import "fmt"

func main() {
	var (
		N, M int
	)

	fmt.Scanf("%d %d\n", &N, &M)
	foods := make([]bool, M+1)
	for i := 1; i <= M; i++ {
		foods[i] = true
	}

	for i := 0; i < N; i++ {
		var K int
		fmt.Scanf("%d", &K)
		f := make([]bool, M+1)
		for j := 0; j < K; j++ {
			var A int
			fmt.Scanf("%d", &A)
			f[A] = true
		}

		for j := 1; j <= M; j++ {
			foods[j] = foods[j] && f[j]
		}
	}

	var res int
	for _, food := range foods {
		if food {
			res++
		}
	}
	fmt.Println(res)
}
