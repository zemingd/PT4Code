package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type edge struct {
	to     int
	weight int
}

// -1:まだわかんない 0:白 1:黒
var color []int

func dfs(g [][]edge, v, now int) {
	color[v] = now

	for _, e := range g[v] {
		if color[e.to] != -1 {
			continue
		}

		if e.weight%2 == 0 {
			dfs(g, e.to, now)
		} else {
			dfs(g, e.to, 1-now)
		}
	}
}

func main() {
	n := getInt()
	graph := make([][]edge, n)
	for i := range graph {
		graph[i] = make([]edge, 0)
	}
	for i := 0; i < n-1; i++ {
		a, b, w := getInt()-1, getInt()-1, getInt()
		graph[a] = append(graph[a], edge{b, w})
		graph[b] = append(graph[b], edge{a, w})
	}
	color = make([]int, n)
	for i := range color {
		color[i] = -1
	}

	dfs(graph, 0, 0)

	for i := range color {
		fmt.Println(color[i])
	}
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// tmp := 200001
	// sc.Buffer(make([]byte, tmp), tmp)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
