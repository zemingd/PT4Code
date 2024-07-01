package main

import (
	"fmt"
)

const INF = 10000000000

func main() {
	var n int
	fmt.Scan(&n)

	adj := make([][]int, n)
	dig := make([]int, n)
	visited := make([]bool, n)
	color := make([]int, n)
	dist := make([]int, n)
	queue := make([]int, n)
	for i := range adj {
		line := make([]int, n)
		for j := range line {
			line[j] = INF
		}
		adj[i] = line
		dig[i] = 0
		visited[i] = false
		color[i] = 0
		dist[i] = 0
		queue[i] = 0
	}

	for i := 0; i < n-1; i++ {
		var u, v, w int
		fmt.Scan(&u, &v, &w)
		adj[u-1][v-1] = w
		adj[v-1][u-1] = w
		dig[u-1]++
		dig[v-1]++
	}

	iQueue := -1
	for i := 0; i < n; i++ {
		if dig[i] > 1 {
			continue
		}
		visited[i] = true
		queue[0] = i
		iQueue++
		break
	}

	for iQueue < n-1 {
		iQueueNext := iQueue + 1
		u := queue[iQueue]
		for v, w := range adj[u] {
			if w < INF && !visited[v] {
				dist[v] = dist[u] + w
				if dist[v]%2 == 1 {
					color[v] = 1
				}
				visited[v] = true
				iQueue++
				queue[iQueue] = v
			}
		}
		iQueue = iQueueNext
	}

	for _, c := range color {
		fmt.Println(c)
	}
}
