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

	N, K, L := nextInt3()
	G1 := make([][]int, N+1)
	G2 := make([][]int, N+1)
	for i := 0; i < K; i++ {
		p, q := nextInt2()
		G1[p] = append(G1[p], q)
		G1[q] = append(G1[q], p)
	}
	for i := 0; i < L; i++ {
		r, s := nextInt2()
		G2[r] = append(G2[r], s)
		G2[s] = append(G2[s], r)
	}
	group1 := make([]int, N+1)
	id := 1
	for i := 1; i < len(group1); i++ {
		if group1[i] == 0 {
			dfs(G1, group1, i, id)
			id++
		}
	}
	group2 := make([]int, N+1)
	id = 1
	for i := 1; i < len(group2); i++ {
		if group2[i] == 0 {
			dfs(G2, group2, i, id)
			id++
		}
	}
	cnt := make([]map[int]int, N+1)
	for i := 1; i < N+1; i++ {
		cnt[i] = make(map[int]int)
	}
	for i := 1; i < N+1; i++ {
		cnt[group1[i]][group2[i]]++
	}
	for i := 1; i <= N; i++ {
		fmt.Fprint(out, cnt[group1[i]][group2[i]])
		if i != N {
			fmt.Fprint(out, " ")
		} else {
			fmt.Fprintln(out, "")
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
