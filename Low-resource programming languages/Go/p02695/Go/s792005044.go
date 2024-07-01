package main

import (
	"fmt"
)

type Set [4]int

func main() {
	var m, n, q int
	fmt.Scanf("%d %d %d", &m, &n, &q)

	setList := make([]Set, q)
	for i := 0; i < q; i++ {
		fmt.Scanf("%d %d %d %d", &setList[i][0], &setList[i][1], &setList[i][2], &setList[i][3])
	}

	score := solve(make([]int, n), m, setList, 0)

	fmt.Printf("%d\n", score)
}

func solve(a []int, m int, setList []Set, deps int) int {
	if deps == len(a) - 1 {
		return calcScore(a, setList)
	}
	nextDeps := deps+1
	max := 0
	for i := a[deps]; i <= m; i++ {
		nextA := a
		nextA[nextDeps] = i
		score := solve(nextA, m, setList, nextDeps)
		if max < score {
			max = score
		}
	}
	return max
}

func calcScore(a []int, setList []Set) int {
	score := 0
	for _, set := range setList {
		if a[set[1] - 1] - a[set[0] - 1] == set[2] {
			score += set[3]
		}
	}
	return score
}
