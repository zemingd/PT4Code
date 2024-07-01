package main

import (
	"fmt"
	"math"
)

var height []int

func main() {
	var N int
	fmt.Scan(&N)
	height = make([]int, N+1)
	cost := make([]int, N+1)
	var h int
	for i := 1; i <= N; i++ {
		fmt.Scan(&h)
		height[i] = h
	}
	cost[0] = 0
	cost[1] = 0
	cost[2] = getCost(2, 1)
	for i := 3; i <= N; i++ {
		cost[i] = getMin(cost[i-1]+getCost(i, i-1), cost[i-2]+getCost(i, i-2))
	}
	fmt.Println(cost[N])

}

func getCost(i, j int) int {
	return int(math.Abs(float64(height[i] - height[j])))
}

func getMin(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
