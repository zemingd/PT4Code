package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	arr := make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&arr[i])
	}
	sort.Sort(sort.Float64Slice(arr))
	s := make([]float64, N)
	for i := 0; i < N-1; i++ {
		s[i] = arr[i+1] - arr[i]
	}
	sort.Sort(sort.Float64Slice(s))
	var r float64
	for i := 0; i < K; i++ {
		r += s[i]
	}
	fmt.Println(r)

}