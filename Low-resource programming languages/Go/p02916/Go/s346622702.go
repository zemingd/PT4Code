package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	indexs := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&indexs[i])
		indexs[i] -= 1 // 0 index
	}

	satisfactions := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&satisfactions[i])
	}

	bonus := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&bonus[i])
	}

	score := satisfactions[indexs[0]]
	for i := 1; i < n; i++ {
		index := indexs[i]
		score += satisfactions[index]
		if index-indexs[i-1] == 1 {
			score += bonus[indexs[i-1]]
		}
	}

	fmt.Println(score)
}
