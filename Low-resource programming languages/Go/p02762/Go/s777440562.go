package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
)

var (
	sc *bufio.Scanner = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
	mod int = 1e9 + 7
)

type Graph struct {
	n     int
	edges [][]int
}

func NewGraph(n int) *Graph {
	g := &Graph{
		n:     n,
		edges: make([][]int, n),
	}
	return g
}

func (g *Graph) AddEdge(u, v int) {
	g.edges[v] = append(g.edges[v], u)
	g.edges[u] = append(g.edges[u], v)
}

func main() {
	N := getInt()
	M := getInt()
	K := getInt()

	friendGraph := NewGraph(N)

	for i := 0; i < M; i++ {
		a := getInt() - 1
		b := getInt() - 1
		friendGraph.AddEdge(a, b)
	}

	blockGraph := NewGraph(N)

	for i := 0; i < K; i++ {
		c := getInt() - 1
		d := getInt() - 1
		blockGraph.AddEdge(c, d)
	}

	visitedEdges := make([]map[int]struct{}, N)
	results := make([]int, N)

	for i := 0; i < N; i++ {
		visited := visitedEdges[i]
		if visited == nil {
			visited = map[int]struct{}{}
			dfs(i, friendGraph.edges, visited)
		}

		results[i] = len(visited) - len(friendGraph.edges[i]) - len(blockGraph.edges[i]) - 1

		//for _, node := range blockGraph.edges[i] {
		//	_, flag := visited[node]
		//	if flag {
		//		results[i]--
		//	}
		//}

		for k := range visited {
			visitedEdges[k] = visited
		}
	}

	printIntArray(results)
}

func dfs(c int, edges [][]int, visited map[int]struct{}) {
	visited[c] = struct{}{}

	for _, v := range edges[c] {
		_, flag := visited[v]
		if flag {
			continue
		}
		dfs(v, edges, visited)
	}
}

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func powMod(n, p int) int {
	if p == 0 {
		return 1
	} else if p%2 == 0 {
		t := powMod(n, p/2)
		return calcMod(t * t)
	} else {
		return n * powMod(n, p-1)
	}
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}

func printIntArray(array []int) {
	strArray := fmt.Sprint(array)
	fmt.Println(strArray[1 : len(strArray)-1])
}

func calcMod(x int) int {
	return x % mod
}
