package main

import "fmt"

func main() {
	var N, M int
	var hoge [30]int
	fmt.Scan(&N, &M)
	for i := 0; i < N; i++ {
		var K int
		fmt.Scan(&K)
		for j := 0; j < K; j++ {
			var A int
			fmt.Scan(&A)
			A--
			hoge[A]++
		}
	}
	ans := 0
	for i := 0; i < 30; i++ {
		if hoge[i] == N {
			ans++
		}
	}
	fmt.Println(ans)
}
