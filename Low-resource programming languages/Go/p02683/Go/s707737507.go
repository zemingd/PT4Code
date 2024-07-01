package main

import (
	"fmt"
)

func main() {
	var n, m, x int
	fmt.Scanf("%d %d %d", &n, &m, &x)
	c := make([]int, n)
	a := make([][]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &c[i])
		a[i] = make([]int, m)
		for j := 0; j < m; j++ {
			fmt.Scanf("%d", &a[i][j])
		}
	}
	answer := minCost(n, m, x, a, c)
	fmt.Println(answer)
}

func minCost(n, m, x int, a [][]int, c []int) int {
	minCost := 12000000
	for bits := 0; bits < (1 << n); bits++ {
		choice := []int{}
		for i := 0; i < n; i++ {
			if (bits & (1 << i)) > 0 {
				choice = append(choice, i)
			}
		}
		if achievable(a, x, choice) {
			cost := calcCost(c, choice)
			if cost < minCost {
				minCost = cost
			}
		}
	}
	if minCost != 12000000 {
		return minCost
	}
	return -1
}

func achievable(a [][]int, x int, choice []int) bool {
	levels := make([]int, len(a[0]))
	for i := 0; i < len(choice); i++ {
		for i, v := range a[choice[i]] {
			levels[i] += v
		}
	}
	for _, v := range levels {
		if v < x {
			return false
		}
	}
	return true
}

func calcCost(c []int, choice []int) int {
	cost := 0
	for _, v := range choice {
		cost += c[v]
	}
	return cost
}
