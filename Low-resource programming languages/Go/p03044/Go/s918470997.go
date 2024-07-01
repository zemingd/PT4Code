package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type edge struct {
	node   int
	weight int
}

type graph [][]edge

var (
	G     graph
	color []int
)

// v: node, p: parent, c: color
func dfs(v, p, c int) {
	color[v] = c
	for _, e := range G[v] {
		if e.node == p {
			continue
		}
		if e.weight == 1 {
			dfs(e.node, v, 1-c)
		} else {
			dfs(e.node, v, c)
		}
	}
}

func main() {
	var n int
	fmt.Scan(&n)
	G = make([][]edge, n)
	for i := 0; i < n; i++ {
		G[i] = make([]edge, 0, 4)
	}
	color = make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	var u, v, w int
	for i := 0; i < n-1; i++ {
		sc.Scan()
		u, _ = strconv.Atoi(sc.Text())
		sc.Scan()
		v, _ = strconv.Atoi(sc.Text())
		sc.Scan()
		w, _ = strconv.Atoi(sc.Text())
		u--
		v--
		w %= 2
		G[u] = append(G[u], edge{v, w})
		G[v] = append(G[v], edge{u, w})
	}
	dfs(0, -1, 1)
	wr := bufio.NewWriter(os.Stdout)
	for _, c := range color {
		fmt.Fprintln(wr, c)
	}
	wr.Flush()
}
