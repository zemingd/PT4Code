package main

import (
	"fmt"
	"sort"
)

func main(){
	var N, K int

	fmt.Scan(&N)
	fmt.Scan(&K)

	trees := make([]int, N)

	for i:=0; i<N; i++{
		fmt.Scan(&trees[i])
	}

	sort.Ints(trees)

	minDiff := 10000000

	for i:=0; i+K<=N; i++{

		tmp_max := -10000000
		tmp_min := 10000000

		for j:=0; j<K; j++{
			if trees[i+j] < tmp_min {
				tmp_min = trees[i+j]
			}
			if tmp_max < trees[i+j] {
				tmp_max = trees[i+j]
			}
		}

		tmpDiff := tmp_max - tmp_min

		if tmpDiff < minDiff {
			minDiff = tmpDiff
		}
	}

	fmt.Println(minDiff)
}
