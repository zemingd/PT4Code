package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Path struct {
	To  int
	Len int
}

var (
	paths   map[int][]Path
	sc      = bufio.NewScanner(os.Stdin)
	ans     []int
	visited []bool
)

func init() {
	sc.Split(bufio.ScanWords)
	paths = map[int][]Path{}
	ans = make([]int, 101010)
	visited = make([]bool, 101010)
}

func input() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func dfs(node int, before int) {
	visited[node] = true

	for i := 0; i < len(paths[node]); i++ {
		nxtPath := paths[node][i]
		if visited[nxtPath.To] {
			continue
		}

		var nxtCol int
		if nxtPath.Len == 0 {
			nxtCol = before
		} else {
			nxtCol = (before + 1) % 2
		}

		ans[nxtPath.To] = nxtCol
		dfs(nxtPath.To, nxtCol)
	}
}

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i < n-1; i++ {
		var f, t, l int
		f = input() - 1
		t = input() - 1
		l = input()

		paths[f] = append(paths[f], Path{
			To:  t,
			Len: l % 2,
		})

		paths[t] = append(paths[t], Path{
			To:  f,
			Len: l % 2,
		})
	}

	//start dfs
	visited[0] = true
	dfs(paths[0][0].To, 0)

	for _, v := range ans[:n] {
		fmt.Println(v)
	}
}