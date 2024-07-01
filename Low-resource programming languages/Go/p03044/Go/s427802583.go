package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type edge struct {
	v, w int
}

func solve() {
	n := getInt()
	graph := make([][]edge, n)
	for i := 0; i < n-1; i++ {
		u, v, w := getInt()-1, getInt()-1, getInt()
		graph[u] = append(graph[u], edge{v, w})
		graph[v] = append(graph[v], edge{u, w})
	}

	ans := make([]int, n)
	for i := range ans {
		ans[i] = -1
	}
	ans[0] = 0

	var dfs func(int)
	dfs = func(now int) {
		for _, next := range graph[now] {
			if ans[next.v] != -1 {
				continue
			}

			if next.w%2 == 0 {
				ans[next.v] = ans[now]
			} else {
				ans[next.v] = (ans[now] ^ 1)
			}
			dfs(next.v)
		}
	}
	dfs(0)

	for _, a := range ans {
		fmt.Fprintln(wr, a)
	}
}

// -----------------------------------------

const (
	inf = 1 << 60
	// mod = 1000000007
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func main() {
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

func getInt() (ret int) {
	sc.Scan()
	ret, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return
}

func getIntSlice(n int) (ret []int) {
	ret = make([]int, n)
	for i := range ret {
		ret[i] = getInt()
	}
	return
}

func getString() (ret string) {
	sc.Scan()
	ret = sc.Text()
	return
}

func getRunes() (ret []rune) {
	ret = []rune(getString())
	return
}
