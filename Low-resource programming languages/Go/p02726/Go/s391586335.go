package main

import (
	"fmt"
	"math"
)

var graph [][]int

func main() {
	var n, x, y int
	fmt.Scan(&n, &x, &y)
	graph = PrepareEmpty2DintArray(n, n)
	for k := 0; k < n-1; k++ {
		graph[k][k+1] = 1
		graph[k+1][k] = 1
		if k == x-1 {
			graph[k][y-1] = 1
			graph[y-1][k] = 1
		}
	}
	warshalFloyd(n)
	countMap := map[int]int{}
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			countMap[graph[i][j]]++
		}
	}
	for i := 1; i < n; i++ {
		fmt.Println(countMap[i])
	}
}

func PrepareEmptyIntArray(n int) []int {
	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = 1000
	}
	return arr
}

func PrepareEmpty2DintArray(x, y int) [][]int {
	arr := make([][]int, y)
	for i := 0; i < y; i++ {
		arr[i] = PrepareEmptyIntArray(x)
	}
	return arr
}
func warshalFloyd(n int) {
	for k := 0; k < n; k++ {
		for i := 0; i < n; i++ {
			for j := 0; j < n; j++ {
				graph[i][j] = int(math.Min(float64(graph[i][j]), float64(graph[i][k]+graph[k][j])))
			}
		}
	}
}
