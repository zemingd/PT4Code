package main

import (
	"fmt"
)

func main() {
	var n, x, y int
	fmt.Scanf("%d %d %d", &n, &x, &y)
	warshallFloyd(n, x-1, y-1)
}

func warshallFloyd(n, x, y int) {
	inf := 1000000
	d := make([][]int, n)
	for i := 0; i < n; i++ {
		d[i] = make([]int, n)
		for j := 0; j < n; j++ {
			if abs(i-j) == 1 || (i == x && j == y) || (i == y && j == x) {
				d[i][j] = 1
			} else {
				d[i][j] = inf
			}
		}
	}

	for k := 0; k < n; k++ {
		for i := 0; i < n; i++ {
			for j := 0; j < n; j++ {
				if d[i][j] > d[i][k]+d[k][j] {
					d[i][j] = d[i][k] + d[k][j]
				}
			}
		}
	}
	distanceMap := make(map[int]int)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			distanceMap[d[i][j]]++
		}
	}
	for i := 1; i < n; i++ {
		println(distanceMap[i])
	}
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
