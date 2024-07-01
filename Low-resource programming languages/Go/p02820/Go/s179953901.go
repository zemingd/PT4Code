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
	mod            = 1e9 + 7
)

var (
	sc *bufio.Scanner = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func main() {
	N := getInt()
	K := getInt()
	R := getInt()
	S := getInt()
	P := getInt()
	T := getString()

	points := make([]int, N)
	selected := make([]string, N)

	if T[0] == 'r' {
		points[0] = P
		selected[0] = "p"
	} else if T[0] == 's' {
		points[0] = R
		selected[0] = "r"
	} else if T[0] == 'p' {
		points[0] = S
		selected[0] = "s"
	}

	for i := 1; i < N; i++ {
		if i < K {
			if T[i] == 'r' {
				points[i] = points[i-1] +  P
				selected[i] = "p"
			} else if T[i] == 's' {
				points[i] = points[i-1] +  R
				selected[i] = "r"
			} else if T[i] == 'p' {
				points[i] = points[i-1] +  S
				selected[i] = "s"
			}
		} else {
			if T[i] == 'r' && selected[i-K] != "p" {
				points[i] = points[i-1] +  P
				selected[i] = "p"
			} else if T[i] == 's' && selected[i-K] != "r" {
				points[i] = points[i-1] +  R
				selected[i] = "r"
			} else if T[i] == 'p' && selected[i-K] != "s" {
				points[i] = points[i-1] +  S
				selected[i] = "s"
			} else {
				points[i] = points[i-1]
				selected[i] = "x"
			}
		}
	}

	fmt.Println(points[N-1])
}

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

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
