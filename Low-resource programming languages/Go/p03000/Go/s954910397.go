package main

import "fmt"

func solve() int {
	var N, X int
	fmt.Scan(&N, &X)

	cnt := 0
	for i := 0; i < N; i++ {
		var L int
		fmt.Scan(&L)
		cnt += L
		if X < cnt {
			return i + 1
		}
	}
	return N + 1
}

func main() {
	ans := solve()
	fmt.Println(ans)
}
