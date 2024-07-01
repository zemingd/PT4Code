package main

import "fmt"

func main() {
	var N, X int
	fmt.Scanf("%d %d", &N, &X)
	L := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &L[i])
	}
	D := 0
	count := 0
	for i := 0; i < N; i++ {
		if D <= X {
			count++
		}
		D += L[i]
	}
	fmt.Println(count)
}
