package main

import (
	"fmt"
	"math"
)

type group struct {
	stat string
	l, r int
}

func intMax(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func main() {
	var (
		N, K int
		S    string
	)
	fmt.Scan(&N, &K, &S)

	G := make([]group, N)
	M := 0
	G[0].stat = string(S[0])
	G[0].l = 0
	for i := 1; i < N; i++ {
		if string(S[i]) != string(S[i-1]) {
			G[M].r = i - 1
			M++
			G[M].stat = string(S[i])
			G[M].l = i
		}
	}
	G[M].r = N - 1
	M++

	ans := 0
	for i := 0; i < M; i++ {
		if G[i].stat == "0" {
			end := intMin(i+2*(K-1)+1, M-1)
			ans = intMax(ans, G[end].r-G[i].l+1)
		} else {
			end := intMin(i+2*K, M-1)
			ans = intMax(ans, G[end].r-G[i].l+1)
		}
	}

	fmt.Println(ans)
}
