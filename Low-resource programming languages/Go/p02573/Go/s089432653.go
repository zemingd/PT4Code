package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const MOD int64 = int64(1e9+7)
var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var tonari = make([][]int, 200010)

func dfs( node int, connected []bool) int {
	ret := 0
	for _, i := range tonari[node] {
		if connected[i]	{
			continue
		}
		connected[i] = true
		ret += dfs(i, connected)+1
	}
	return ret
}

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	M := nextInt()
	connected := make([]bool, N, N)
	var a,b int
	for i := 0; i < M; i++ {
		a = nextInt()
		b = nextInt()
		a--; b--
		tonari[a] = append(tonari[a],b)
		tonari[b] = append(tonari[b],a)
	}
	ans := 1
	for i:=0; i<N; i++ {
		if connected[i] {
			continue
		}
		if cnt := dfs(i, connected); ans < cnt{
			ans = cnt
		}
	}
	fmt.Printf("%d\n", ans)
}
