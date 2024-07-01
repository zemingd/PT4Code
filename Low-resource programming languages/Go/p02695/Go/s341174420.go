package main

import (
	"fmt"
)

type Set [4]int64

func main() {
	var m, n, q int64
	fmt.Scanf("%d %d %d", &n, &m, &q)

	setList := make([]Set, q)
	for i := int64(0); i < q; i++ {
		fmt.Scanf("%d %d %d %d", &setList[i][0], &setList[i][1], &setList[i][2], &setList[i][3])
	}

	score := solve(make([]int64, n), m, setList, -1)

	fmt.Printf("%d\n", score)
}

func solve(a []int64, m int64, setList []Set, deps int) int64 {
	if deps >= len(a) - 1 {
		return calcScore(a, setList)
	}
	nextDeps := deps+1

	first := int64(1)
	if deps >= 0 {
		first = a[deps]
	}
	max := int64(0)
	for i := first; i <= m; i++ {
		nextA := a
		nextA[nextDeps] = i
		score := solve(nextA, m, setList, nextDeps)
		if max < score {
			max = score
		}
	}
	return max
}

func calcScore(a []int64, setList []Set) int64 {
	var score int64
	for _, set := range setList {
		if a[set[1] - 1] - a[set[0] - 1] == set[2] {
			score += set[3]
		}
	}
	return score
}
