package main

import (
	"fmt"
)

// 以下の問題
// https://atcoder.jp/contests/abc148/tasks/abc148_b

func main() {
	var (
		N    int
		S, T string
	)
	fmt.Scan(&N, &S, &T)

	for i := 0; i < N; i++ {
		fmt.Print(string(S[i]) + string(T[i]))
	}
}
