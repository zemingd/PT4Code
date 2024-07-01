package main

import (
	"fmt"
	"os"
)

var n, x, y int
var graph [][]int

type Que []int

func (q *Que) push(x int) {
	*q = append(*q, x)
}
func (q *Que) pop() int {
	top := (*q)[0]
	*q = (*q)[1:]
	return top
}

func main() {
	fmt.Scan(&n, &x, &y)
	graph = make([][]int, n)
	// build
	for i := 0; i < n-1; i++ {
		graph[i] = append(graph[i], i+1)
		graph[i+1] = append(graph[i+1], i)
	}
	graph[x-1] = append(graph[x-1], y-1)
	graph[y-1] = append(graph[y-1], x-1)

	dist := make([][]int, n)
	dists := make(map[int]int)
	for i := range dist {
		dist[i] = make([]int, n)
		for j := range dist[i] {
			dist[i][j] = -1
		}
		dist[i][i] = 0
		dists[0] += 2
	}

	for i := range dist {
		que := make(Que, 0)
		que.push(i)
		for len(que) > 0 {
			j := que.pop()
			d := dist[i][j]
			for _, nv := range graph[j] {
				if dist[i][nv] != -1 {
					continue
				}
				dist[i][nv] = d + 1
				dists[d+1]++
				que.push(nv)
			}
		}
	}

	fmt.Fprintln(os.Stderr, dist)
	for k := 1; k < n; k++ {
		fmt.Println(dists[k] / 2)
	}
}
