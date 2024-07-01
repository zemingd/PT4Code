package main

import "fmt"

import "sort"

func main() {
	var N int
	fmt.Scanf("%d", N)
	X := make([][]int64, 0, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &X[i][0], &X[i][1])
	}
	sort.Slice(X, func(i, j int) bool {
		return X[i][0]+X[i][1]-1 < X[j][0]+X[j][1]
	})
	count := 0
	flags := make([]bool, 0, N)
	for i := range X {
		x, l := X[i][0], X[i][1]
		min := x - l + 1
		cover := false
		for j := 0; j < i; j++ {
			if !flags[j] {
				continue
			}
			if X[j][0]+X[j][1]-1 >= min {
				cover = true
				break
			}
		}
		flags[i] = !cover
	}
	for _, v := range flags {
		if v {
			count++
		}
	}
	fmt.Println(count)
}
