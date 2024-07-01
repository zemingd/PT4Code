package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 10000000
)

var (
	sc = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func nextString() string {
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

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

type node struct {
	ID     int
	Height int
	Neigh  []*node
}

func dfs(nodes []*node, index int, visited map[*node]bool) int {
	if visited[nodes[index]] {
		return 0
	}

	nd := nodes[index]
	visited[nd] = true
	heighest := true
	ans := 0
	for _, ng := range nd.Neigh {
		if ng.Height >= nd.Height {
			heighest = false
			ans += dfs(nodes, ng.ID, visited)
			break
		}
	}
	if heighest {
		return ans + 1
	}
	return ans
}

func main() {
	n, m := nextInt(), nextInt()
	nodes := make([]*node, n)
	for i := 0; i < n; i++ {
		nodes[i] = &node{i, nextInt(), nil}
	}

	for i := 0; i < m; i++ {
		a, b := nextInt()-1, nextInt()-1
		nodes[a].Neigh = append(nodes[a].Neigh, nodes[b])
		nodes[b].Neigh = append(nodes[b].Neigh, nodes[a])
	}

	visited := make(map[*node]bool)
	ans := 0
	for i := 0; i < n; i++ {
		ans += dfs(nodes, i, visited)
	}
	fmt.Println(ans)
}
