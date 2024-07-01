package main

import (
	"fmt"
)

func main() {
	var n, x, y int
	fmt.Scanf("%d %d %d", &n, &x, &y)
	printDistance(n, x-1, y-1)
}

func printDistance(n, x, y int) {
	distanceMap := make(map[int]int)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			distance := min(j-i, abs(x-i)+abs(y-j)+1)
			distanceMap[distance]++
		}
	}

	for i := 1; i < n; i++ {
		fmt.Println(distanceMap[i])
	}
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
