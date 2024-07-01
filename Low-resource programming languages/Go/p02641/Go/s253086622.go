package main

import (
	"fmt"
	"sort"
)

type K struct {
	v, dif int
}

func main() {
	var X, N int
	fmt.Scan(&X, &N)
	if N == 0 {
		fmt.Println(X)
		return
	}
	P := make(map[int]bool)
	for i := 0; i < N; i++ {
		var V int
		fmt.Scan(&V)
		P[V] = true
	}
	KS := []K{}
	for i := 1; i <= 100; i++ {
		if !P[i] {
			KS = append(KS, K{v: i, dif: abs(X - i)})
		}
	}
	sort.Slice(KS, func(i, j int) bool {
		if KS[i].dif < KS[j].dif {
			return true
		} else if KS[i].dif > KS[j].dif {
			return false
		} else {
			return KS[i].v < KS[j].v
		}
	})
	fmt.Println(KS[0].v)
}

func abs(x int) int {
	if x < 0 {
		x *= -1
	}
	return x
}
