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

	N, X, Y := nextInt3()
	G := make([][]int, N+1)
	for i := 1; i < N; i++ {
		G[i] = append(G[i], i+1)
		G[i+1] = append(G[i+1], i)
	}
	G[X] = append(G[X], Y)
	G[Y] = append(G[Y], X)

	d := make([]int, N)
	for i := 1; i < len(G); i++ {
		u, qu := i, []int{i}
		dist := make([]int, N+1)
		for j := 1; j < len(dist); j++ {
			if j != i {
				dist[j] = -1
			}
		}
		for len(qu) > 0 {
			u, qu = qu[0], qu[1:]
			for v := 0; v < len(G[u]); v++ {
				next := G[u][v]
				if dist[next] == -1 {
					dist[next] = dist[u] + 1
					qu = append(qu, next)
					d[dist[next]]++
				}
			}
		}
	}
	for i := 1; i < N; i++ {
		fmt.Fprintln(out, d[i]/2)
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
