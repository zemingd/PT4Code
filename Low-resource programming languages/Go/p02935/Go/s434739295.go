package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	V := make([]int, N)
	for i := range V {
		fmt.Scan(&V[i])
	}
	sort.Ints(V)

	ans := float64(V[0]+V[1]) / 2
	for i := 2; i < N; i++ {
		ans = (ans + float64(V[i])) / 2
	}
	fmt.Println(ans)
}
