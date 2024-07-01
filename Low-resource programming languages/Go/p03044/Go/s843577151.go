package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

type edge struct {
	toNode, weight int
}

type node struct {
	dist    int
	visited bool
	next    []edge
}

type graph []node

func dfs(G *graph, x int) {
	(*G)[x].visited = true
	for _, edge := range (*G)[x].next {
		u := edge.toNode
		w := edge.weight
		if !(*G)[u].visited {
			(*G)[u].dist = (*G)[x].dist + w
			dfs(G, u)
		}
	}

}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	G := make(graph, N)

	for i := 0; i < N-1; i++ {
		u, v, w := scanInt(), scanInt(), scanInt()
		G[u-1].next = append(G[u-1].next, edge{toNode: v - 1, weight: w})
		G[v-1].next = append(G[v-1].next, edge{toNode: u - 1, weight: w})
	}
	dfs(&G, 0)

	for _, node := range G {
		fmt.Println(node.dist % 2)
	}
}
