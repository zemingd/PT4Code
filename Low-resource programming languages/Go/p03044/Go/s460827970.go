package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func dfs(v, p, c int) {
	colors[v] = c
	for _, nextv := range G[v] {
		if nextv.to == p {
			continue
		}
		if nextv.cost%2 == 1 {
			dfs(nextv.to, v, 1-c)
		} else {
			dfs(nextv.to, v, c)
		}

	}
	// for _, nextv := range G[v] {
	// 	if colors[nextv.to] != -1 {
	// 		if colors[nextv.to] == c {
	// 			if nextv.cost%2 == 0 {
	// 				return true
	// 			}
	// 			return false
	// 		}

	// 		if colors[nextv.to] != c {
	// 			if nextv.cost%2 == 1 {
	// 				return true
	// 			}
	// 			return false
	// 		}

	// 		continue
	// 	}

	// 	if !dfs(nextv.to, 1-c) {
	// 		return false
	// 	}
	// }
	// return true
}

type edge struct {
	to   int
	cost int
}

var G [][]edge
var N int
var colors []int

func main() {
	sc.Split(bufio.ScanWords)
	N = nextInt()
	G = make([][]edge, N)
	for i := 0; i < N; i++ {
		G[i] = make([]edge, 0)
	}
	colors = make([]int, N)
	for i := 0; i < N; i++ {
		colors[i] = -1
	}

	for i := 0; i < N-1; i++ {
		u, v, w := nextInt()-1, nextInt()-1, nextInt()
		G[u] = append(G[u], edge{to: v, cost: w})
		G[v] = append(G[v], edge{to: u, cost: w})
	}

	// for i := 0; i < N; i++ {
	// 	if colors[i] != -1 {
	// 		continue
	// 	}
	// 	dfs(i, 0)
	// }
	dfs(0, -1, 0)
	for _, c := range colors {
		fmt.Println(c)
	}
}
