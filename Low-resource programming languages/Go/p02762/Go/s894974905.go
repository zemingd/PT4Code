package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner
var out *bufio.Writer

const INF = 1 << 30

func main() {
	sc = bufio.NewScanner(os.Stdin)
	//bytes, _ := ioutil.ReadFile("./stdin.txt")
	//sc = bufio.NewScanner(strings.NewReader(string(bytes)))
	out = bufio.NewWriter(os.Stdout)
	buf := make([]byte, 1<<20)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	N, M, K := nextInt3()
	G1 := make([][]int, N+1)
	G2 := make([][]int, N+1)
	for i := 0; i < M; i++ {
		a, b := nextInt2()
		G1[a] = append(G1[a], b)
		G1[b] = append(G1[b], a)
	}
	for i := 0; i < K; i++ {
		a, b := nextInt2()
		G2[a] = append(G2[a], b)
		G2[b] = append(G2[b], a)
	}
	G := [2]*[][]int{&G1, &G2}
	group := [2][]int{make([]int, N+1), make([]int, N+1)}
	for i := 0; i < 2; i++ {
		id := 1
		for j := 1; j <= N; j++ {
			if group[i][j] == 0 {
				dfs(*G[i], group[i], j, id)
				id++
			}
		}
	}
	c1 := make([]int, N+1)
	c2 := make([]map[int]int, N+1)
	for i := 1; i <= N; i++ {
		c2[i] = make(map[int]int)
	}
	for i := 1; i <= N; i++ {
		c1[group[0][i]]++
		c2[group[0][i]][group[1][i]]++
	}
	for i := 1; i <= N; i++ {
		result := c1[group[0][i]] - c2[group[0][i]][group[1][i]] - len(G1[i])
		fmt.Fprint(out, result)
		if i == N {
			fmt.Fprintln(out, "")
		} else {
			fmt.Fprint(out, " ")
		}
	}

}

func dfs(G [][]int, group []int, u, id int) {
	group[u] = id
	for e := 0; e < len(G[u]); e++ {
		v := G[u][e]
		if group[v] == 0 {
			dfs(G, group, v, id)
		}
	}
}

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
func nextInt2() (int, int)      { return nextInt(), nextInt() }
func nextInt3() (int, int, int) { return nextInt(), nextInt(), nextInt() }
func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func cond(condition bool, t, f int) int {
	if condition {
		return t
	}
	return f
}
func abs(a int) int { return cond(a < 0, -a, a) }
func min(a ...int) int {
	ret := a[0]
	for i := 1; i < len(a); i++ {
		chmin(&ret, a[i])
	}
	return ret
}
func max(a ...int) int {
	ret := a[0]
	for i := 1; i < len(a); i++ {
		chmax(&ret, a[i])
	}
	return ret
}
func chmin(a *int, b int) { *a = cond(*a < b, *a, b) }
func chmax(a *int, b int) { *a = cond(*a > b, *a, b) }
