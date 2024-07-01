package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type edge struct {
	tail   int
	weight int
}

func dfs(adj [][]edge, visited []bool, dist []int, color []int, v int) {
	for _, e := range adj[v] {
		if visited[e.tail] {
			continue
		}
		visited[e.tail] = true
		dist[e.tail] = dist[v] + e.weight
		if dist[e.tail]%2 == 1 {
			color[e.tail] = 1
		}
		dfs(adj, visited, dist, color, e.tail)
	}
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n := nextInt()

	adj := make([][]edge, n)
	visited := make([]bool, n)
	dist := make([]int, n)
	color := make([]int, n)
	for i := range adj {
		line := make([]edge, 0)
		adj[i] = line
	}

	for i := 0; i < n-1; i++ {
		u, v, w := nextInt(), nextInt(), nextInt()
		adj[u-1] = append(adj[u-1], edge{v - 1, w})
		adj[v-1] = append(adj[v-1], edge{u - 1, w})
	}

	visited[0] = true
	dfs(adj, visited, dist, color, 0)

	for _, c := range color {
		fmt.Println(c)
	}
}
