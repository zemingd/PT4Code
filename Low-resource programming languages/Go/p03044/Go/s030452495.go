package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type edge struct {
	node, weight int
}
var colors []int
var g [][]edge

func main() {
	sc.Split(bufio.ScanWords)

	//n := nextInt()
	n := 3
	g = make([][]edge, n)
	for i := 0; i < n; i++ {
		g[i] = make([]edge, 0)
	}
	colors = make([]int, n)

	us := []int{1, 2}; vs := []int{2, 3}; ws := []int{2, 1}
	for i := 0; i < n-1; i++ {
		//u, v, w := nextInt(), nextInt(), nextInt()
		u, v, w := us[i], vs[i], ws[i]
		u--; v--
		w %= 2
		g[u] = append(g[u], edge{v, w})
		g[v] = append(g[v], edge{u, w})
	}

	dfs(0, -1, 1)

	w := bufio.NewWriter(os.Stdout)
	for i := 0; i < len(colors); i++ {
		fmt.Fprintln(w, colors[i])
	}

	w.Flush()
}

func dfs(node, parent, color int) {
	colors[node] = color
	for _, e := range g[node] {
		if e.node == parent {
			continue
		}
		if e.weight == 1 {
			dfs(e.node, node, 1-color)
		} else {
			dfs(e.node, node, color)
		}
	}
}