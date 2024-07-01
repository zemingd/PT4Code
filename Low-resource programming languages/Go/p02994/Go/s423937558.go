package main

import "fmt"

func main() {
	var N, L int
	fmt.Scan(&N, &L)

	var taste int
	for i := 1; i <= N; i++ {
		taste += L + i - 1
	}
	if L >= 0 {
		taste -= L
	} else if L+N-1 < 0 {
		taste -= L + N - 1
	}
	fmt.Println(taste)
}