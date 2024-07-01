package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type edge struct {
	next   int
	weight int
}

var (
	color []int
	graph [][]edge
)

func dfs(now, prev, d int) {
	if d%2 == 0 {
		color[now] = 0
	} else {
		color[now] = 1
	}

	for _, e := range graph[now] {
		if e.next == prev {
			continue
		}
		dfs(e.next, now, d+e.weight)
	}
}

func main() {
	n := getInt()
	graph = make([][]edge, n)
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

	dfs(0, -1, 0)

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
