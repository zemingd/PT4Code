package main

import "fmt"

func rsp(hand byte, R int, S int, P int) int {
	if string(hand) == "r" {
		return P
	} else if string(hand) == "p" {
		return S
	} else {
		return R
	}
}

func main() {
	var T string
	var N, K, R, S, P int
	fmt.Scan(&N, &K)
	fmt.Scan(&R, &S, &P)
	fmt.Scan(&T)
	lis := []bool{}
	for n := 0; n < N; n++ {
		lis = append(lis, true)
	}
	ans := 0
	for t := 0; t < K; t++ {
		ans += rsp(T[t], R, S, P)
		lis[t] = false
	}
	for t := K; t < N; t++ {
		if T[t] != T[t-K] || lis[t-K] {
			ans += rsp(T[t], R, S, P)
			lis[t] = false
		}
	}
	fmt.Println(ans)
}
