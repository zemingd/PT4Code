package main

import (
	"fmt"
	"sort"
)

var INF = (1 << 32) - 1

func main(){
	var N, K int

	fmt.Scan(&N)
	fmt.Scan(&K)

	trees := make([]int, N)

	for i:=0; i<N; i++{
		fmt.Scan(&trees[i])
	}

	sort.Ints(trees)

	minDiff := INF

	for i:=0; i+K<=N; i++{

		tmpDiff := trees[i+K-1] - trees[i]

		minDiff = min(minDiff, tmpDiff)

	}

	fmt.Println(minDiff)
}

func max(x int, y int) int{
	if x > y {
		return x
	}else{
		return y
	}
}

func min(x int, y int) int{
	if x < y {
		return x
	}else{
		return y
	}
}
