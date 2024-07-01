package main

import (
	"fmt"
	"sort"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	v := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &v[i])
	}

	sort.Ints(v)

	var max float64 = float64(v[0])
	for i := 0; i < N-1; i++ {
		max = ((max + float64(v[i+1])) / 2.0)
	}

	fmt.Println(max)
}
