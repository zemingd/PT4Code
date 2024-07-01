package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)

	X := make([]int, N)
	for i := 0; i < N; i++ {
		var x int
		fmt.Scan(&x)
		X[i] = x
	}

	sort.Ints(X)

	distinct := false
	for i := 0; i < N-1; i++ {
		if X[i] == X[i+1] {
			distinct = true
		}
	}
	if distinct {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}
